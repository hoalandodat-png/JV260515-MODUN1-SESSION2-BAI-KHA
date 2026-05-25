CREATE DATABASE "LibraryDB";
CREATE SCHEMA library;
CREATE TABLE library.books (
                               book_id SERIAL PRIMARY KEY,            -- Số nguyên, khóa chính, tự tăng
                               title VARCHAR(100) NOT NULL,           -- Chuỗi tối đa 100 ký tự, bắt buộc nhập
                               author VARCHAR(50) NOT NULL,           -- Chuỗi tối đa 50 ký tự, bắt buộc nhập
                               published_year INT,                    -- Số nguyên
                               price NUMERIC(10, 2)                   -- Số thực (Tối ưu nhất cho tiền tệ)
);
ALTER TABLE library.books
    ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;
 DROP TABLE library.books;