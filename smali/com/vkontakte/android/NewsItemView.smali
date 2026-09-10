.class public Lcom/vkontakte/android/NewsItemView;
.super Landroid/widget/RelativeLayout;
.source "NewsItemView.java"


# instance fields
.field public bitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/vkontakte/android/NewsEntry;

.field imgRemoved:Z

.field private lastPressed:J

.field private lst:J

.field nlikes:I

.field public showDateAgo:Z

.field ta:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    .line 27
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsItemView;->showDateAgo:Z

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->ta:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/NewsItemView;->nlikes:I

    .line 30
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsItemView;->imgRemoved:Z

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->bitmaps:Ljava/util/ArrayList;

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/NewsItemView;->lastPressed:J

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    .line 27
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsItemView;->showDateAgo:Z

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->ta:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/NewsItemView;->nlikes:I

    .line 30
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsItemView;->imgRemoved:Z

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->bitmaps:Ljava/util/ArrayList;

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/NewsItemView;->lastPressed:J

    .line 43
    return-void
.end method

.method static synthetic access$0(ILandroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 261
    invoke-static {p0, p1, p2, p3, p4}, Lcom/vkontakte/android/NewsItemView;->openPhotoList(ILandroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;Landroid/view/View;)V

    return-void
.end method

.method public static addAttachments(Landroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;)V
    .locals 24
    .param p0, "item"    # Landroid/view/View;
    .param p2, "e"    # Lcom/vkontakte/android/NewsEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;",
            "Lcom/vkontakte/android/NewsEntry;",
            ")V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    const/16 v21, 0x0

    .local v21, "pi":I
    const/4 v13, 0x0

    .line 141
    .local v13, "ai":I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v20, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v16, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    const/16 v18, 0x0

    .line 144
    .local v18, "nPhotos":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 151
    const/4 v15, 0x0

    .line 152
    .local v15, "audioPlaylist":[Lcom/vkontakte/android/AudioFile;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 153
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/vkontakte/android/AudioFile;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "audioPlaylist":[Lcom/vkontakte/android/AudioFile;
    check-cast v15, [Lcom/vkontakte/android/AudioFile;

    .line 155
    .restart local v15    # "audioPlaylist":[Lcom/vkontakte/android/AudioFile;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 187
    return-void

    .line 144
    .end local v15    # "audioPlaylist":[Lcom/vkontakte/android/AudioFile;
    :cond_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/Attachment;

    .line 145
    .local v14, "att":Lcom/vkontakte/android/Attachment;
    instance-of v4, v14, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v4, :cond_4

    instance-of v4, v14, Lcom/vkontakte/android/AlbumAttachment;

    if-nez v4, :cond_4

    add-int/lit8 v18, v18, 0x1

    .line 146
    :cond_4
    instance-of v4, v14, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v4, :cond_0

    move-object v11, v14

    .line 147
    check-cast v11, Lcom/vkontakte/android/AudioAttachment;

    .line 148
    .local v11, "aa":Lcom/vkontakte/android/AudioAttachment;
    new-instance v4, Lcom/vkontakte/android/AudioFile;

    iget v5, v11, Lcom/vkontakte/android/AudioAttachment;->aid:I

    iget v6, v11, Lcom/vkontakte/android/AudioAttachment;->oid:I

    iget-object v7, v11, Lcom/vkontakte/android/AudioAttachment;->artist:Ljava/lang/String;

    iget-object v8, v11, Lcom/vkontakte/android/AudioAttachment;->title:Ljava/lang/String;

    iget v9, v11, Lcom/vkontakte/android/AudioAttachment;->duration:I

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/vkontakte/android/AudioFile;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    .end local v11    # "aa":Lcom/vkontakte/android/AudioAttachment;
    .end local v14    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v15    # "audioPlaylist":[Lcom/vkontakte/android/AudioFile;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/Attachment;

    .line 156
    .restart local v14    # "att":Lcom/vkontakte/android/Attachment;
    if-eqz v14, :cond_2

    .line 157
    if-eqz p2, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/vkontakte/android/Attachment;->getViewForList(Landroid/content/Context;)Landroid/view/View;

    move-result-object v22

    .line 158
    .local v22, "v":Landroid/view/View;
    :goto_2
    if-lez v18, :cond_6

    instance-of v4, v14, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v4, :cond_6

    instance-of v4, v14, Lcom/vkontakte/android/AlbumAttachment;

    if-nez v4, :cond_6

    .line 159
    new-instance v19, Lcom/vkontakte/android/Photo;

    invoke-direct/range {v19 .. v19}, Lcom/vkontakte/android/Photo;-><init>()V

    .local v19, "photo":Lcom/vkontakte/android/Photo;
    move-object v4, v14

    .line 160
    check-cast v4, Lcom/vkontakte/android/PhotoAttachment;

    iget-object v4, v4, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    move-object v4, v14

    .line 161
    check-cast v4, Lcom/vkontakte/android/PhotoAttachment;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    move-object v4, v14

    .line 162
    check-cast v4, Lcom/vkontakte/android/PhotoAttachment;

    iget v4, v4, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    move-object/from16 v0, v19

    iput v4, v0, Lcom/vkontakte/android/Photo;->albumID:I

    move-object v4, v14

    .line 163
    check-cast v4, Lcom/vkontakte/android/PhotoAttachment;

    iget v4, v4, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    move-object/from16 v0, v19

    iput v4, v0, Lcom/vkontakte/android/Photo;->id:I

    move-object v4, v14

    .line 164
    check-cast v4, Lcom/vkontakte/android/PhotoAttachment;

    iget v4, v4, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    move-object/from16 v0, v19

    iput v4, v0, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 165
    const/4 v4, 0x0

    move-object/from16 v0, v19

    iput v4, v0, Lcom/vkontakte/android/Photo;->date:I

    .line 166
    const-string v4, ""

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 167
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    move/from16 v17, v21

    .line 169
    .local v17, "idx":I
    new-instance v4, Lcom/vkontakte/android/NewsItemView$1;

    move/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/vkontakte/android/NewsItemView$1;-><init>(ILjava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;Landroid/view/View;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    add-int/lit8 v21, v21, 0x1

    .line 176
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_6

    move-object/from16 v4, v22

    check-cast v4, Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 178
    .end local v17    # "idx":I
    .end local v19    # "photo":Lcom/vkontakte/android/Photo;
    :cond_6
    instance-of v4, v14, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v4, :cond_7

    move-object/from16 v12, v22

    .line 179
    check-cast v12, Lcom/vkontakte/android/AudioAttachView;

    .line 180
    .local v12, "aav":Lcom/vkontakte/android/AudioAttachView;
    iput-object v15, v12, Lcom/vkontakte/android/AudioAttachView;->playlist:[Lcom/vkontakte/android/AudioFile;

    .line 181
    iput v13, v12, Lcom/vkontakte/android/AudioAttachView;->playlistPos:I

    .line 182
    add-int/lit8 v13, v13, 0x1

    .line 184
    .end local v12    # "aav":Lcom/vkontakte/android/AudioAttachView;
    :cond_7
    const v4, 0x7f06003c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 157
    .end local v22    # "v":Landroid/view/View;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/vkontakte/android/Attachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v22

    goto/16 :goto_2
.end method

.method private static openPhotoList(ILandroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;Landroid/view/View;)V
    .locals 11
    .param p0, "index"    # I
    .param p1, "view"    # Landroid/view/View;
    .param p3, "e"    # Lcom/vkontakte/android/NewsEntry;
    .param p4, "container"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;",
            "Lcom/vkontakte/android/NewsEntry;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 262
    if-eqz p3, :cond_4

    iget v7, p3, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v9, 0x6

    if-eq v7, v9, :cond_0

    iget v7, p3, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v9, 0x7

    if-ne v7, v9, :cond_4

    :cond_0
    iget v7, p3, Lcom/vkontakte/android/NewsEntry;->postID:I

    const/4 v9, 0x5

    if-le v7, v9, :cond_4

    .line 263
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v9, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-direct {v3, v7, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "photo_index"

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p0, v7, :cond_2

    move v7, p0

    :goto_0
    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string v9, "photo"

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p0, v7, :cond_3

    .end local p0    # "index":I
    :goto_1
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/Photo;

    iget-object v7, v7, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v7, "feed_entry"

    invoke-virtual {v3, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 268
    const-string v7, "fullscreen"

    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 295
    :cond_1
    :goto_2
    return-void

    .restart local p0    # "index":I
    :cond_2
    move v7, v8

    .line 265
    goto :goto_0

    :cond_3
    move p0, v8

    .line 266
    goto :goto_1

    .line 271
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Lcom/vkontakte/android/Photo;

    .line 272
    .local v6, "ph":[Lcom/vkontakte/android/Photo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v1, v7, :cond_7

    .line 273
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v9, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-direct {v3, v7, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v7, "photo_list"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 275
    const-string v9, "photo_index"

    array-length v7, v6

    if-ge p0, v7, :cond_8

    move v7, p0

    :goto_4
    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    const-string v9, "photo"

    array-length v7, v6

    if-ge p0, v7, :cond_9

    move v7, p0

    :goto_5
    aget-object v7, v6, v7

    iget-object v7, v7, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v7, "fullscreen"

    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    array-length v7, v6

    if-ge p0, v7, :cond_a

    move v7, p0

    :goto_6
    aget-object v7, v6, v7

    iget-object v7, v7, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 279
    array-length v7, v6

    if-ge p0, v7, :cond_5

    move v8, p0

    :cond_5
    aget-object v7, v6, v8

    iget-object v7, v7, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-static {v7}, Lcom/vkontakte/android/ImageCache;->isInCache(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 280
    const v7, 0x7f06003c

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 281
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_6

    instance-of v7, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_6

    .line 282
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    sput-object v7, Lcom/vkontakte/android/PhotoViewerActivity;->preview:Landroid/graphics/Bitmap;

    .line 283
    const-string v7, "thumb"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 286
    :cond_6
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_b

    .line 287
    invoke-virtual {p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v4, v7, 0x5

    .line 288
    .local v4, "iw":I
    invoke-virtual {p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v7, 0x5

    .line 289
    .local v2, "ih":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    div-int/lit8 v9, v2, 0x2

    sub-int/2addr v8, v9

    invoke-static {p1, v7, v8, v4, v2}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v5

    .line 290
    .local v5, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 272
    .end local v2    # "ih":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "iw":I
    .end local v5    # "opts":Landroid/app/ActivityOptions;
    :cond_7
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/Photo;

    aput-object v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_8
    move v7, v8

    .line 275
    goto/16 :goto_4

    :cond_9
    move v7, v8

    .line 276
    goto/16 :goto_5

    :cond_a
    move v7, v8

    .line 278
    goto/16 :goto_6

    .line 292
    :cond_b
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method

.method private updateInfoLine()V
    .locals 8

    .prologue
    const v7, 0x7f0600bb

    const v3, 0x7f0600ba

    const v6, 0x7f0600b9

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 190
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v1, v4, :cond_0

    .line 216
    :goto_0
    return-void

    .line 191
    :cond_0
    const-string v0, ""

    .line 193
    .local v0, "infoHtml":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/vkontakte/android/NewsItemView;->showDateAgo:Z

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "infoHtml":Ljava/lang/String;
    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->ta:Ljava/lang/String;

    .line 198
    .restart local v0    # "infoHtml":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    if-lez v1, :cond_2

    .line 200
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :goto_2
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    if-lez v1, :cond_3

    .line 208
    const v1, 0x7f0600bc

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 215
    :goto_3
    const v1, 0x7f06003d

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v0, v1, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    goto :goto_1

    .line 203
    :cond_2
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 211
    :cond_3
    const v1, 0x7f0600bc

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method public addToLoader(Lcom/vkontakte/android/ImageLoader;)V
    .locals 7
    .param p1, "ldr"    # Lcom/vkontakte/android/ImageLoader;

    .prologue
    const v6, 0x7f0600b2

    const v5, 0x7f060018

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 232
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsItemView;->imgRemoved:Z

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 233
    :cond_0
    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 234
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v4, v2, v3}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 236
    :cond_1
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 237
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 238
    :cond_2
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 239
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 240
    :cond_3
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsItemView;->imgRemoved:Z

    goto :goto_0
.end method

.method public deselect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 318
    invoke-super {p0, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 319
    invoke-super {p0, v2}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/NewsItemView;->lastPressed:J

    .line 321
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/HighlightDrawable;->setSel(Z)V

    .line 322
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->invalidate()V

    .line 323
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsItemView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    return-void
.end method

.method public removeImages()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0600b2

    const v5, 0x7f060018

    const v4, 0x7f020206

    const/4 v2, 0x1

    .line 245
    iget-boolean v1, p0, Lcom/vkontakte/android/NewsItemView;->imgRemoved:Z

    if-eqz v1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iput-boolean v2, p0, Lcom/vkontakte/android/NewsItemView;->imgRemoved:Z

    .line 247
    const v1, 0x7f060039

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 249
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 250
    .local v0, "v":Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 253
    :cond_2
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 254
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 256
    :cond_3
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    .line 50
    return-void
.end method

.method public setData(Lcom/vkontakte/android/NewsEntry;)V
    .locals 11
    .param p1, "entry"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    const v10, 0x7f06003b

    const v9, 0x7f0600b8

    const v8, 0x7f06003c

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 56
    .local v1, "t":J
    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    .line 58
    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eq v3, v4, :cond_2

    .line 59
    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const-string v6, "DELETED"

    iput-object v6, v3, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 60
    :cond_1
    const v3, 0x7f06003a

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v6, v6, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v3, 0x7f060039

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v6, v6, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 64
    const v3, 0x7f0600b6

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 65
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 66
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v6, v6, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 68
    const v3, 0x7f0600b7

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 69
    const v3, 0x7f0600b7

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v6, v6, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 81
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 87
    :goto_1
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v6, v6, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget v3, p1, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    iput v3, p0, Lcom/vkontakte/android/NewsItemView;->nlikes:I

    .line 92
    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eq v3, v4, :cond_3

    .line 93
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    .line 95
    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 96
    const v3, 0x7f06003a

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v3, v5, v5, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 105
    :cond_3
    :goto_3
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 107
    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 108
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-static {p0, v3, v4}, Lcom/vkontakte/android/NewsItemView;->addAttachments(Landroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;)V

    .line 115
    :goto_4
    invoke-direct {p0}, Lcom/vkontakte/android/NewsItemView;->updateInfoLine()V

    .line 117
    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 118
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f03002a

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "lcv":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 121
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 122
    const v3, 0x7f0600b4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->replaceHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "\\[id(\\d+)\\|([^\\]]+)\\]"

    const-string v7, "$2"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const v3, 0x7f0600b3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->lastCommentUserName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    const v3, 0x7f0600b2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v0, v5, v3, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 127
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    invoke-static {v0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 129
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->numComments:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_c

    .line 131
    const v3, 0x7f0600b1

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0010

    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .end local v0    # "lcv":Landroid/view/View;
    :cond_4
    :goto_5
    invoke-static {p0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 137
    return-void

    .line 71
    :cond_5
    const v3, 0x7f0600b7

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 74
    :cond_6
    const v3, 0x7f0600b6

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 75
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 76
    const v3, 0x7f0600b7

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 83
    :cond_7
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    :cond_8
    move v3, v5

    .line 93
    goto/16 :goto_2

    .line 98
    :cond_9
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v3, v5, v5, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    .line 100
    :cond_a
    const v3, 0x7f06003a

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 101
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    .line 111
    :cond_b
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 133
    .restart local v0    # "lcv":Landroid/view/View;
    :cond_c
    const v3, 0x7f0600b1

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09020b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5
.end method

.method public setPressed(Z)V
    .locals 6
    .param p1, "p"    # Z

    .prologue
    .line 305
    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vkontakte/android/NewsItemView;->lastPressed:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 315
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 308
    const v2, 0x7f06003c

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 309
    .local v0, "g":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->invalidate()V

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/vkontakte/android/AudioAttachView;

    if-eqz v2, :cond_2

    .line 311
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setPressed(Z)V

    .line 309
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "p"    # Z

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/HighlightDrawable;->isSel()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 302
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    goto :goto_0
.end method

.method public updateDate()V
    .locals 3

    .prologue
    .line 220
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "t":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->ta:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    const v1, 0x7f06003d

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->ta:Ljava/lang/String;

    .line 225
    :cond_0
    return-void
.end method

.method public updateLikes()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/vkontakte/android/NewsItemView;->updateInfoLine()V

    .line 229
    return-void
.end method
