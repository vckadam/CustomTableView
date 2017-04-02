# CustomTableView
iOS custom tableview with constraints
UITableViewCells as a Xib with appropriate contraints
1. A `detailImage` image view: 45px by 45px. Center vertically to the cell. Leading space to
the super view’s left margin. 24px padding between the image and the “main” view that
contains a `headline` label and a `body` label.
2. `headline` and `body` labels are in the “main” view. Top and bottom padding is 16px. 3px
vertical padding between `headline` and `body`. `headline` font should be Headline style,
`body` font should be Body style.
3. `attribute` is a label with trailing space to the super view’s right margin and at least 8px
horizontal spacing between attribute and “main” view. The text “Attribute 1” is baseline
aligned with the text of the `headline` label. `attribute` font should be Caption style.
Note:
The test application should show a number of rows in a table with different values; image or
label text.
4. When `body` text is not set, the `detailImage`, `headline`, and `attribute` should be center
aligned
5. It should be possible to replace the `attribute` label with an image view with size 16x16px
6. `detailImage` image should have a circular mask
7. When horizontalSizeClass is .regular, display a `description` label between “main” view and
`attribute`. `description` should be hidden in .compact horizontal mode. You may determine
description label’s padding, font, etc.
