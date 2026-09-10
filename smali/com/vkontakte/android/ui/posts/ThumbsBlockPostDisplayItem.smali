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
    .line 41
    .local p2, "_atts":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/ThumbAttachment;>;"
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    iput-boolean p3, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->photosMode:Z

    .line 44
    iput-object p1, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    .line 45
    iput-object p4, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->referer:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;ILandroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 138
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
    .line 139
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

    if-lt v8, v1, :cond_3

    .line 147
    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    move-object/from16 v0, p4

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x7

    if-eq v1, v3, :cond_0

    move-object/from16 v0, p4

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_5

    :cond_0
    move-object/from16 v0, p4

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    const/4 v3, 0x5

    if-le v1, v3, :cond_5

    .line 148
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 151
    .local v2, "args":Landroid/os/Bundle;
    move-object/from16 v0, p5

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 152
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_1

    instance-of v1, v7, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 153
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    .line 156
    :cond_1
    const-string v1, "orientation"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    const-string v1, "list"

    move-object/from16 v0, p3

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 158
    const-string v1, "position"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    const-string v1, "feed_entry"

    move-object/from16 v0, p4

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 160
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->photosMode:Z

    if-eqz v1, :cond_2

    const-string v1, "bg_color"

    const v3, -0xe5e5e6

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    :cond_2
    const-string v1, "PhotoViewerFragment"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static/range {v1 .. v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    .line 175
    :goto_1
    return-void

    .line 140
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_3
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 141
    .local v11, "v":Landroid/view/View;
    const/4 v1, 0x2

    new-array v9, v1, [I

    .line 142
    .local v9, "pos":[I
    invoke-virtual {v11, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 143
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

    .line 144
    invoke-virtual/range {p5 .. p5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v11, v1}, Lcom/vkontakte/android/ViewUtils;->getViewOffset(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    iget v10, v1, Landroid/graphics/Point;->y:I

    .line 145
    .local v10, "top":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Photo;

    if-gez v10, :cond_4

    neg-int v3, v10

    :goto_2
    iput v3, v1, Lcom/vkontakte/android/Photo;->viewClipTop:I

    .line 139
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 145
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 163
    .end local v9    # "pos":[I
    .end local v10    # "top":I
    .end local v11    # "v":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p5

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 164
    .restart local v7    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_6

    instance-of v1, v7, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_6

    .line 165
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    .line 168
    :cond_6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 169
    .restart local v2    # "args":Landroid/os/Bundle;
    const-string v1, "orientation"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    const-string v1, "list"

    move-object/from16 v0, p3

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 171
    const-string v1, "position"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->photosMode:Z

    if-eqz v1, :cond_7

    const-string v1, "bg_color"

    const v3, -0xe5e5e6

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    :cond_7
    const-string v1, "PhotoViewerFragment"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static/range {v1 .. v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    goto/16 :goto_1
.end method


# virtual methods
.method public getImageCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 121
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
    .line 50
    const/4 v0, 0x5

    return v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 60
    move-object/from16 v10, p2

    .line 61
    .local v10, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 62
    new-instance v4, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$1;

    invoke-direct {v4, p0, p1}, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$1;-><init>(Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;Landroid/content/Context;)V

    .line 68
    .local v4, "fl":Landroid/widget/FrameLayout;
    new-instance v3, Lcom/vkontakte/android/ui/FlowLayout;

    invoke-direct {v3, p1}, Lcom/vkontakte/android/ui/FlowLayout;-><init>(Landroid/content/Context;)V

    .line 69
    .local v3, "f":Lcom/vkontakte/android/ui/FlowLayout;
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v13, 0x11

    invoke-direct {v8, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 70
    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v11, 0x40a00000    # 5.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    iput v11, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 71
    const/high16 v11, 0x40a00000    # 5.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    iput v11, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 72
    invoke-virtual {v3, v8}, Lcom/vkontakte/android/ui/FlowLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 74
    new-instance v5, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;

    const/4 v11, 0x0

    invoke-direct {v5, v11}, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;-><init>(Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;)V

    .line 75
    .local v5, "holder":Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;
    iput-object v3, v5, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    .line 76
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 77
    move-object v10, v4

    .line 80
    .end local v3    # "f":Lcom/vkontakte/android/ui/FlowLayout;
    .end local v4    # "fl":Landroid/widget/FrameLayout;
    .end local v5    # "holder":Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;

    .line 81
    .restart local v5    # "holder":Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v11, v5, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v11}, Lcom/vkontakte/android/ui/FlowLayout;->getChildCount()I

    move-result v11

    if-lt v6, v11, :cond_2

    .line 88
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v9, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    iget-object v11, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_4

    .line 95
    iget-object v11, v5, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v11}, Lcom/vkontakte/android/ui/FlowLayout;->removeAllViews()V

    .line 96
    const/4 v6, 0x0

    .line 97
    iget-object v11, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 116
    return-object v10

    .line 82
    .end local v9    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    :cond_2
    iget-object v11, v5, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v11, v6}, Lcom/vkontakte/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "att":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/vkontakte/android/Attachment;->reuseView(Landroid/view/View;Ljava/lang/String;)V

    .line 81
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "att":Landroid/view/View;
    .restart local v9    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ThumbAttachment;

    .line 90
    .local v0, "att":Lcom/vkontakte/android/ThumbAttachment;
    instance-of v12, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v12, :cond_1

    instance-of v12, v0, Lcom/vkontakte/android/AlbumAttachment;

    if-nez v12, :cond_1

    .line 91
    new-instance v12, Lcom/vkontakte/android/Photo;

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/ThumbAttachment;
    invoke-direct {v12, v0}, Lcom/vkontakte/android/Photo;-><init>(Lcom/vkontakte/android/PhotoAttachment;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ThumbAttachment;

    .restart local v0    # "att":Lcom/vkontakte/android/ThumbAttachment;
    move-object v11, v0

    .line 98
    check-cast v11, Lcom/vkontakte/android/Attachment;

    const/4 v13, 0x0

    invoke-virtual {v11, p1, v13}, Lcom/vkontakte/android/Attachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 99
    .local v1, "av":Landroid/view/View;
    instance-of v11, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v11, :cond_6

    instance-of v11, v0, Lcom/vkontakte/android/AlbumAttachment;

    if-nez v11, :cond_6

    .line 100
    move v7, v6

    .line 101
    .local v7, "index":I
    iget-object v2, v5, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    .line 102
    .local v2, "container":Landroid/view/View;
    new-instance v11, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$2;

    invoke-direct {v11, p0, v7, v9, v2}, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$2;-><init>(Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;ILjava/util/ArrayList;Landroid/view/View;)V

    invoke-virtual {v1, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .end local v2    # "container":Landroid/view/View;
    .end local v7    # "index":I
    :cond_6
    instance-of v11, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v11, :cond_7

    .line 110
    check-cast v0, Lcom/vkontakte/android/VideoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/ThumbAttachment;
    iget-object v11, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->referer:Ljava/lang/String;

    iput-object v11, v0, Lcom/vkontakte/android/VideoAttachment;->referer:Ljava/lang/String;

    .line 112
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 113
    iget-object v11, v5, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v11, v1}, Lcom/vkontakte/android/ui/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 126
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;

    .line 127
    .local v1, "holder":Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;
    iget-object v2, v1, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v2, p1}, Lcom/vkontakte/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "av":Landroid/view/View;
    if-nez p3, :cond_0

    .line 129
    iget-object v2, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ImageAttachment;

    invoke-interface {v2, v0}, Lcom/vkontakte/android/ImageAttachment;->clearImage(Landroid/view/View;)V

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ImageAttachment;

    invoke-interface {v2, v0, p3, p4}, Lcom/vkontakte/android/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method
