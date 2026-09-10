.class public Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;
.super Lcom/vkontakte/android/ui/posts/PostDisplayItem;
.source "ThumbsBlockPostDisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;
    }
.end annotation


# instance fields
.field public atts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ThumbAttachment;",
            ">;"
        }
    .end annotation
.end field

.field public photosMode:Z

.field public post:Lcom/vkontakte/android/NewsEntry;

.field public referer:Ljava/lang/String;

.field public useBigVideoView:Z


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/NewsEntry;Ljava/util/List;ZLjava/lang/String;)V
    .locals 2
    .param p1, "_post"    # Lcom/vkontakte/android/NewsEntry;
    .param p3, "_photosMode"    # Z
    .param p4, "_referer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkontakte/android/NewsEntry;",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/ThumbAttachment;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "_atts":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/ThumbAttachment;>;"
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->useBigVideoView:Z

    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 45
    iput-boolean p3, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->photosMode:Z

    .line 46
    iput-object p1, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    .line 47
    iput-object p4, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->referer:Ljava/lang/String;

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;ILandroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # Lcom/vkontakte/android/NewsEntry;
    .param p5, "x5"    # Landroid/view/ViewGroup;

    .prologue
    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->openPhotoList(ILandroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private openPhotoList(ILandroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;Landroid/view/ViewGroup;)V
    .locals 14
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p4, "e"    # Lcom/vkontakte/android/NewsEntry;
    .param p5, "attachContainer"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;",
            "Lcom/vkontakte/android/NewsEntry;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 148
    .local p3, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v8, v1, :cond_1

    .line 149
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 150
    .local v11, "v":Landroid/view/View;
    const/4 v1, 0x2

    new-array v9, v1, [I

    fill-array-data v9, :array_0

    .line 151
    .local v9, "pos":[I
    invoke-virtual {v11, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 152
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Photo;

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v4, v9, v4

    const/4 v5, 0x1

    aget v5, v9, v5

    const/4 v6, 0x0

    aget v6, v9, v6

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v6, v12

    const/4 v12, 0x1

    aget v12, v9, v12

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {v3, v4, v5, v6, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v1, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    .line 153
    invoke-virtual/range {p5 .. p5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v11, v1}, Lcom/vkontakte/android/ViewUtils;->getViewOffset(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    iget v10, v1, Landroid/graphics/Point;->y:I

    .line 154
    .local v10, "top":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Photo;

    if-gez v10, :cond_0

    neg-int v3, v10

    :goto_1
    iput v3, v1, Lcom/vkontakte/android/Photo;->viewClipTop:I

    .line 148
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 154
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 156
    .end local v9    # "pos":[I
    .end local v10    # "top":I
    .end local v11    # "v":Landroid/view/View;
    :cond_1
    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x6

    if-eq v1, v3, :cond_2

    move-object/from16 v0, p4

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x7

    if-eq v1, v3, :cond_2

    move-object/from16 v0, p4

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_5

    :cond_2
    move-object/from16 v0, p4

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    const/4 v3, 0x5

    if-le v1, v3, :cond_5

    .line 157
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v2, "args":Landroid/os/Bundle;
    move-object/from16 v0, p5

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 161
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_3

    instance-of v1, v7, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    .line 162
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    .line 165
    :cond_3
    const-string v1, "orientation"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    const-string v1, "list"

    move-object/from16 v0, p3

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 167
    const-string v1, "position"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    const-string v1, "feed_entry"

    move-object/from16 v0, p4

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 169
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->photosMode:Z

    if-eqz v1, :cond_4

    const-string v1, "bg_color"

    const v3, -0xe5e5e6

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    :cond_4
    const-string v1, "PhotoViewerFragment"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static/range {v1 .. v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    .line 184
    :goto_2
    return-void

    .line 172
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_5
    move-object/from16 v0, p5

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 173
    .restart local v7    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_6

    instance-of v1, v7, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_6

    .line 174
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    .line 177
    :cond_6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 178
    .restart local v2    # "args":Landroid/os/Bundle;
    const-string v1, "orientation"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    const-string v1, "list"

    move-object/from16 v0, p3

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 180
    const-string v1, "position"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->photosMode:Z

    if-eqz v1, :cond_7

    const-string v1, "bg_color"

    const v3, -0xe5e5e6

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    :cond_7
    const-string v1, "PhotoViewerFragment"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static/range {v1 .. v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    goto :goto_2

    .line 150
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public getImageCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    invoke-interface {v0}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x5

    return v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 62
    move-object/from16 v13, p2

    .line 63
    .local v13, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 64
    new-instance v6, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v6, v0, v1}, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$1;-><init>(Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;Landroid/content/Context;)V

    .line 70
    .local v6, "fl":Landroid/widget/FrameLayout;
    new-instance v5, Lcom/vkontakte/android/ui/FlowLayout;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/vkontakte/android/ui/FlowLayout;-><init>(Landroid/content/Context;)V

    .line 71
    .local v5, "f":Lcom/vkontakte/android/ui/FlowLayout;
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    const/16 v16, 0x11

    move/from16 v0, v16

    invoke-direct {v11, v14, v15, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 72
    .local v11, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v14, 0x40a00000    # 5.0f

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v14

    iput v14, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 73
    const/high16 v14, 0x40a00000    # 5.0f

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v14

    iput v14, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 74
    invoke-virtual {v5, v11}, Lcom/vkontakte/android/ui/FlowLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 76
    new-instance v7, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;

    const/4 v14, 0x0

    invoke-direct {v7, v14}, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;-><init>(Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$1;)V

    .line 77
    .local v7, "holder":Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;
    iput-object v5, v7, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    .line 78
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 79
    move-object v13, v6

    .line 82
    .end local v5    # "f":Lcom/vkontakte/android/ui/FlowLayout;
    .end local v6    # "fl":Landroid/widget/FrameLayout;
    .end local v7    # "holder":Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;

    .line 83
    .restart local v7    # "holder":Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v14, v7, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v14}, Lcom/vkontakte/android/ui/FlowLayout;->getChildCount()I

    move-result v14

    if-ge v8, v14, :cond_2

    .line 84
    iget-object v14, v7, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v14, v8}, Lcom/vkontakte/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 85
    .local v2, "att":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Ljava/lang/String;

    if-eqz v14, :cond_1

    .line 86
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/vkontakte/android/Attachment;->reuseView(Landroid/view/View;Ljava/lang/String;)V

    .line 83
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 90
    .end local v2    # "att":Landroid/view/View;
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v12, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ThumbAttachment;

    .line 92
    .local v2, "att":Lcom/vkontakte/android/ThumbAttachment;
    instance-of v14, v2, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v14, :cond_3

    instance-of v14, v2, Lcom/vkontakte/android/AlbumAttachment;

    if-nez v14, :cond_3

    .line 93
    new-instance v14, Lcom/vkontakte/android/Photo;

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    .end local v2    # "att":Lcom/vkontakte/android/ThumbAttachment;
    invoke-direct {v14, v2}, Lcom/vkontakte/android/Photo;-><init>(Lcom/vkontakte/android/PhotoAttachment;)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    :cond_4
    iget-object v14, v7, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v14}, Lcom/vkontakte/android/ui/FlowLayout;->removeAllViews()V

    .line 98
    const/4 v8, 0x0

    .line 99
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ThumbAttachment;

    .line 101
    .restart local v2    # "att":Lcom/vkontakte/android/ThumbAttachment;
    instance-of v14, v2, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->useBigVideoView:Z

    if-eqz v14, :cond_7

    move-object v14, v2

    .line 102
    check-cast v14, Lcom/vkontakte/android/VideoAttachment;

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Lcom/vkontakte/android/VideoAttachment;->getView(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v3

    .line 103
    .local v3, "av":Landroid/view/View;
    new-instance v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    invoke-direct {v14}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>()V

    invoke-virtual {v3, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    const/high16 v14, -0x1000000

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 108
    :goto_3
    instance-of v14, v2, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v14, :cond_5

    instance-of v14, v2, Lcom/vkontakte/android/AlbumAttachment;

    if-nez v14, :cond_5

    .line 109
    move v10, v8

    .line 110
    .local v10, "index":I
    iget-object v4, v7, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    .line 111
    .local v4, "container":Landroid/view/View;
    new-instance v14, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v10, v12, v4}, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$2;-><init>(Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;ILjava/util/ArrayList;Landroid/view/View;)V

    invoke-virtual {v3, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .end local v4    # "container":Landroid/view/View;
    .end local v10    # "index":I
    :cond_5
    instance-of v14, v2, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v14, :cond_6

    .line 119
    check-cast v2, Lcom/vkontakte/android/VideoAttachment;

    .end local v2    # "att":Lcom/vkontakte/android/ThumbAttachment;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->referer:Ljava/lang/String;

    iput-object v14, v2, Lcom/vkontakte/android/VideoAttachment;->referer:Ljava/lang/String;

    .line 121
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 122
    iget-object v14, v7, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v14, v3}, Lcom/vkontakte/android/ui/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .end local v3    # "av":Landroid/view/View;
    .restart local v2    # "att":Lcom/vkontakte/android/ThumbAttachment;
    :cond_7
    move-object v14, v2

    .line 106
    check-cast v14, Lcom/vkontakte/android/Attachment;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Lcom/vkontakte/android/Attachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "av":Landroid/view/View;
    goto :goto_3

    .line 125
    .end local v2    # "att":Lcom/vkontakte/android/ThumbAttachment;
    .end local v3    # "av":Landroid/view/View;
    :cond_8
    return-object v13
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 135
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;

    .line 136
    .local v1, "holder":Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;
    iget-object v2, v1, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v2, p1}, Lcom/vkontakte/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, "av":Landroid/view/View;
    if-nez p3, :cond_0

    .line 138
    iget-object v2, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ImageAttachment;

    invoke-interface {v2, v0}, Lcom/vkontakte/android/ImageAttachment;->clearImage(Landroid/view/View;)V

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ImageAttachment;

    invoke-interface {v2, v0, p3, p4}, Lcom/vkontakte/android/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method
