resource "aws_s3_object" "index" {
  bucket       = aws_s3_bucket.server_bucket.id
  key          = "index.html"
  source       = "src/index.html"
  content_type = "text/html"
}

resource "aws_s3_object" "error" {
  bucket       = aws_s3_bucket.server_bucket.id
  key          = "error.html"
  source       = "src/error.html"
  content_type = "text/html"
}

resource "aws_s3_object" "skills" {
  bucket       = aws_s3_bucket.server_bucket.id
  key          = "skills.html"
  source       = "src/skills.html"
  content_type = "text/html"
}

resource "aws_s3_object" "projects" {
  bucket       = aws_s3_bucket.server_bucket.id
  key          = "projects.html"
  source       = "src/projects.html"
  content_type = "text/html"
}

resource "aws_s3_object" "experience" {
  bucket       = aws_s3_bucket.server_bucket.id
  key          = "experience.html"
  source       = "src/experience.html"
  content_type = "text/html"
}

resource "aws_s3_object" "education" {
  bucket       = aws_s3_bucket.server_bucket.id
  key          = "education.html"
  source       = "src/education.html"
  content_type = "text/html"
}

resource "aws_s3_object" "scripts" {
  bucket       = aws_s3_bucket.server_bucket.id
  key          = "scripts.js"
  source       = "src/scripts.js"
  content_type = "application/javascript"
}

resource "aws_s3_object" "css" {
  bucket       = aws_s3_bucket.server_bucket.id
  key          = "styles.css"
  source       = "src/styles.css"
  content_type = "text/css"
}

resource "aws_s3_object" "profile" {
  bucket       = aws_s3_bucket.server_bucket.id
  key          = "images/profile.jpg"
  source       = "src/images/profile.jpg"
  content_type = "image/jpeg"
}

resource "aws_s3_object" "project1" {
  bucket       = aws_s3_bucket.server_bucket.id
  key          = "images/project1.png"
  source       = "src/images/project1.png"
  content_type = "image/png"
}

resource "aws_s3_object" "project2" {
  bucket       = aws_s3_bucket.server_bucket.id
  key          = "images/project2.png"
  source       = "src/images/project2.png"
  content_type = "image/png"
}

resource "aws_s3_object" "project3" {
  bucket       = aws_s3_bucket.server_bucket.id
  key          = "images/project3.png"
  source       = "src/images/project3.png"
  content_type = "image/png"
}