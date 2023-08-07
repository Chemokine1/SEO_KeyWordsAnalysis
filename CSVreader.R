library(ggplot2)
library(ggpubr)

csv_file <- commandArgs(trailingOnly = TRUE)[1]
csv_basename <- tools::file_path_sans_ext(basename(csv_file))

data3 <- read.csv(csv_file)
data3$Search.Volume <- gsub(",", "", data3$Search.Volume)
data3$Search.Volume <- as.integer(data3$Search.Volume)
data3$SEO.Difficulty <- as.integer(data3$SEO.Difficulty)
data3 <- data3[(data3$SEO.Difficulty < 70) & (data3$Search.Volume > 300),]
print(data3)

Volume <- ggplot(data3, aes(x = Keyword, y = Search.Volume)) +
  geom_bar(position = "dodge", stat = "identity") +
  coord_flip() +
  xlab('Keyword')

SD <- ggplot(data3, aes(x = Keyword, y = SEO.Difficulty)) +
  geom_bar(position = "dodge", stat = "identity") +
  coord_flip() +
  theme(axis.text.y = element_blank(),
        axis.ticks.y = element_blank()) +
  xlab("")

figure2 <- ggarrange(Volume, SD, ncol = 2, nrow = 1)


# Save the PDF file with a name based on the input CSV file
pdf_file <- paste(csv_basename, ".pdf", sep = "")
ggsave(pdf_file, figure2)

# Print the saved PDF file name (optional)
print(pdf_file)
