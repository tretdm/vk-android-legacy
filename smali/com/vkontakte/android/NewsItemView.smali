.class public Lcom/vkontakte/android/NewsItemView;
.super Landroid/widget/RelativeLayout;
.source "NewsItemView.java"


# instance fields
.field private audios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/AudioFile;",
            ">;"
        }
    .end annotation
.end field

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

.field private photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;"
        }
    .end annotation
.end field

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

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    .line 25
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsItemView;->showDateAgo:Z

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->ta:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/NewsItemView;->nlikes:I

    .line 28
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsItemView;->imgRemoved:Z

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->photos:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->audios:Ljava/util/ArrayList;

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

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    .line 25
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsItemView;->showDateAgo:Z

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->ta:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/NewsItemView;->nlikes:I

    .line 28
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsItemView;->imgRemoved:Z

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->photos:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->audios:Ljava/util/ArrayList;

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

.method static synthetic access$0(Lcom/vkontakte/android/NewsItemView;I)V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsItemView;->openPhotoList(I)V

    return-void
.end method

.method private openPhotoList(I)V
    .locals 9
    .param p1, "index"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 275
    iget-object v4, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v6, 0x6

    if-eq v4, v6, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v6, 0x7

    if-ne v4, v6, :cond_4

    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->postID:I

    const/4 v6, 0x5

    if-le v4, v6, :cond_4

    .line 276
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v6, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "photo_index"

    iget-object v4, p0, Lcom/vkontakte/android/NewsItemView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_2

    move v4, p1

    :goto_0
    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    const-string v6, "photo"

    iget-object v4, p0, Lcom/vkontakte/android/NewsItemView;->photos:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/vkontakte/android/NewsItemView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p1, v7, :cond_3

    .end local p1    # "index":I
    :goto_1
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Photo;

    iget-object v4, v4, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v4, "feed_entry"

    iget-object v5, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 281
    const-string v4, "fullscreen"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 301
    :cond_1
    :goto_2
    return-void

    .restart local p1    # "index":I
    :cond_2
    move v4, v5

    .line 278
    goto :goto_0

    :cond_3
    move p1, v5

    .line 279
    goto :goto_1

    .line 284
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/vkontakte/android/NewsItemView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Lcom/vkontakte/android/Photo;

    .line 285
    .local v3, "ph":[Lcom/vkontakte/android/Photo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v4, p0, Lcom/vkontakte/android/NewsItemView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_7

    .line 286
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v6, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v4, "photo_list"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 288
    const-string v6, "photo_index"

    array-length v4, v3

    if-ge p1, v4, :cond_8

    move v4, p1

    :goto_4
    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    const-string v6, "photo"

    array-length v4, v3

    if-ge p1, v4, :cond_9

    move v4, p1

    :goto_5
    aget-object v4, v3, v4

    iget-object v4, v4, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v4, "fullscreen"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    array-length v4, v3

    if-ge p1, v4, :cond_a

    move v4, p1

    :goto_6
    aget-object v4, v3, v4

    iget-object v4, v4, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 292
    array-length v4, v3

    if-ge p1, v4, :cond_5

    move v5, p1

    :cond_5
    aget-object v4, v3, v5

    iget-object v4, v4, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-static {v4}, Lcom/vkontakte/android/ImageCache;->isInCache(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 293
    const v4, 0x7f06003a

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 294
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_6

    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_6

    .line 295
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/vkontakte/android/PhotoViewerActivity;->preview:Landroid/graphics/Bitmap;

    .line 296
    const-string v4, "thumb"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 299
    :cond_6
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 285
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v4, p0, Lcom/vkontakte/android/NewsItemView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Photo;

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_8
    move v4, v5

    .line 288
    goto :goto_4

    :cond_9
    move v4, v5

    .line 289
    goto :goto_5

    :cond_a
    move v4, v5

    .line 291
    goto :goto_6
.end method

.method private updateInfoLine()V
    .locals 8

    .prologue
    const v7, 0x7f0600a8

    const v3, 0x7f0600a7

    const v6, 0x7f0600a6

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 203
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v1, v4, :cond_0

    .line 229
    :goto_0
    return-void

    .line 204
    :cond_0
    const-string v0, ""

    .line 206
    .local v0, "infoHtml":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/vkontakte/android/NewsItemView;->showDateAgo:Z

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "infoHtml":Ljava/lang/String;
    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->ta:Ljava/lang/String;

    .line 211
    .restart local v0    # "infoHtml":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    if-lez v1, :cond_2

    .line 213
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

    .line 214
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 219
    :goto_2
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    if-lez v1, :cond_3

    .line 221
    const v1, 0x7f0600a9

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

    .line 222
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 228
    :goto_3
    const v1, 0x7f06003b

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v0, v1, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    goto :goto_1

    .line 216
    :cond_2
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 224
    :cond_3
    const v1, 0x7f0600a9

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
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
    const v6, 0x7f0600a0

    const v5, 0x7f060016

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 245
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsItemView;->imgRemoved:Z

    if-nez v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 246
    :cond_0
    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 247
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v4, v2, v3}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 249
    :cond_1
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 250
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 251
    :cond_2
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 252
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    .line 253
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

    const v6, 0x7f0600a0

    const v5, 0x7f060016

    const v4, 0x7f0201e8

    const/4 v2, 0x1

    .line 258
    iget-boolean v1, p0, Lcom/vkontakte/android/NewsItemView;->imgRemoved:Z

    if-eqz v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iput-boolean v2, p0, Lcom/vkontakte/android/NewsItemView;->imgRemoved:Z

    .line 260
    const v1, 0x7f060037

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 262
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 263
    .local v0, "v":Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    :cond_2
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 267
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 269
    :cond_3
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 270
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
    .locals 24
    .param p1, "entry"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 56
    .local v19, "t":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 57
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    .line 58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    .line 59
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const-string v3, "DELETED"

    iput-object v3, v2, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 60
    :cond_1
    const v2, 0x7f060038

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v2, 0x7f060037

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 64
    const v2, 0x7f0600a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    const v2, 0x7f0600a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 66
    const v2, 0x7f0600a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 68
    const v2, 0x7f0600a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 69
    const v2, 0x7f0600a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 81
    const v2, 0x7f060039

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 86
    :goto_1
    const v2, 0x7f060039

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    move-object/from16 v0, p1

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/NewsItemView;->nlikes:I

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    .line 92
    const v2, 0x7f060039

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 95
    const v2, 0x7f060038

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 104
    :cond_3
    :goto_3
    const v2, 0x7f06003a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 107
    const/16 v18, 0x0

    .local v18, "pi":I
    const/4 v11, 0x0

    .line 108
    .local v11, "ai":I
    const v2, 0x7f06003a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 111
    const/16 v16, 0x0

    .line 112
    .local v16, "nPhotos":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_4
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    .line 119
    const/4 v13, 0x0

    check-cast v13, [Lcom/vkontakte/android/AudioFile;

    .line 120
    .local v13, "audioPlaylist":[Lcom/vkontakte/android/AudioFile;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->audios:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "audioPlaylist":[Lcom/vkontakte/android/AudioFile;
    check-cast v13, [Lcom/vkontakte/android/AudioFile;

    .line 123
    .restart local v13    # "audioPlaylist":[Lcom/vkontakte/android/AudioFile;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 181
    .end local v11    # "ai":I
    .end local v13    # "audioPlaylist":[Lcom/vkontakte/android/AudioFile;
    .end local v16    # "nPhotos":I
    .end local v18    # "pi":I
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/NewsItemView;->updateInfoLine()V

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030023

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 185
    .local v15, "lcv":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/view/View;->setClickable(Z)V

    .line 187
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 188
    const v2, 0x7f0600a2

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->lastComment:Ljava/lang/String;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->replaceHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\[id(\\d+)\\|([^\\]]+)\\]"

    const-string v5, "$2"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    const v2, 0x7f0600a1

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->lastCommentUserName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const v2, 0x7f0600a0

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 192
    const/4 v2, 0x0

    invoke-virtual {v15}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v15}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v15}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v15, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 193
    const v2, 0x7f06003a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 194
    invoke-static {v15}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 195
    const v2, 0x7f06003a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 196
    const v2, 0x7f06009f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0010

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .end local v15    # "lcv":Landroid/view/View;
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 200
    return-void

    .line 71
    :cond_8
    const v2, 0x7f0600a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 74
    :cond_9
    const v2, 0x7f0600a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 75
    const v2, 0x7f0600a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 76
    const v2, 0x7f0600a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 83
    :cond_a
    const v2, 0x7f060039

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 92
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 97
    :cond_c
    const v2, 0x7f0600a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    .line 99
    :cond_d
    const v2, 0x7f060038

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 100
    const v2, 0x7f0600a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    .line 112
    .restart local v11    # "ai":I
    .restart local v16    # "nPhotos":I
    .restart local v18    # "pi":I
    :cond_e
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/Attachment;

    .line 113
    .local v12, "att":Lcom/vkontakte/android/Attachment;
    instance-of v2, v12, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v2, :cond_f

    add-int/lit8 v16, v16, 0x1

    .line 114
    :cond_f
    instance-of v2, v12, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v2, :cond_4

    move-object v9, v12

    .line 115
    check-cast v9, Lcom/vkontakte/android/AudioAttachment;

    .line 116
    .local v9, "aa":Lcom/vkontakte/android/AudioAttachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewsItemView;->audios:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    new-instance v2, Lcom/vkontakte/android/AudioFile;

    iget v3, v9, Lcom/vkontakte/android/AudioAttachment;->aid:I

    iget v4, v9, Lcom/vkontakte/android/AudioAttachment;->oid:I

    iget-object v5, v9, Lcom/vkontakte/android/AudioAttachment;->artist:Ljava/lang/String;

    iget-object v6, v9, Lcom/vkontakte/android/AudioAttachment;->title:Ljava/lang/String;

    iget v7, v9, Lcom/vkontakte/android/AudioAttachment;->duration:I

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/vkontakte/android/AudioFile;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 123
    .end local v9    # "aa":Lcom/vkontakte/android/AudioAttachment;
    .end local v12    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v13    # "audioPlaylist":[Lcom/vkontakte/android/AudioFile;
    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/Attachment;

    .line 124
    .restart local v12    # "att":Lcom/vkontakte/android/Attachment;
    if-eqz v12, :cond_6

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/vkontakte/android/Attachment;->getViewForList(Landroid/content/Context;)Landroid/view/View;

    move-result-object v21

    .line 126
    .local v21, "v":Landroid/view/View;
    if-lez v16, :cond_11

    instance-of v2, v12, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v2, :cond_11

    .line 127
    new-instance v17, Lcom/vkontakte/android/Photo;

    invoke-direct/range {v17 .. v17}, Lcom/vkontakte/android/Photo;-><init>()V

    .local v17, "photo":Lcom/vkontakte/android/Photo;
    move-object v2, v12

    .line 128
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    move-object v2, v12

    .line 129
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    move-object v2, v12

    .line 130
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget v2, v2, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    move-object/from16 v0, v17

    iput v2, v0, Lcom/vkontakte/android/Photo;->albumID:I

    move-object v2, v12

    .line 131
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget v2, v2, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    move-object/from16 v0, v17

    iput v2, v0, Lcom/vkontakte/android/Photo;->id:I

    move-object v2, v12

    .line 132
    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget v2, v2, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    move-object/from16 v0, v17

    iput v2, v0, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->time_l:I

    move-object/from16 v0, v17

    iput v2, v0, Lcom/vkontakte/android/Photo;->date:I

    .line 134
    const-string v2, ""

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/NewsItemView;->photos:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    move/from16 v14, v18

    .line 137
    .local v14, "idx":I
    new-instance v2, Lcom/vkontakte/android/NewsItemView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14}, Lcom/vkontakte/android/NewsItemView$1;-><init>(Lcom/vkontakte/android/NewsItemView;I)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    add-int/lit8 v18, v18, 0x1

    .line 144
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_11

    move-object/from16 v2, v21

    check-cast v2, Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 146
    .end local v14    # "idx":I
    .end local v17    # "photo":Lcom/vkontakte/android/Photo;
    :cond_11
    instance-of v2, v12, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v2, :cond_12

    move-object/from16 v10, v21

    .line 147
    check-cast v10, Lcom/vkontakte/android/AudioAttachView;

    .line 148
    .local v10, "aav":Lcom/vkontakte/android/AudioAttachView;
    iput-object v13, v10, Lcom/vkontakte/android/AudioAttachView;->playlist:[Lcom/vkontakte/android/AudioFile;

    .line 149
    iput v11, v10, Lcom/vkontakte/android/AudioAttachView;->playlistPos:I

    .line 150
    add-int/lit8 v11, v11, 0x1

    .line 152
    .end local v10    # "aav":Lcom/vkontakte/android/AudioAttachView;
    :cond_12
    const v2, 0x7f06003a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 177
    .end local v11    # "ai":I
    .end local v12    # "att":Lcom/vkontakte/android/Attachment;
    .end local v13    # "audioPlaylist":[Lcom/vkontakte/android/AudioFile;
    .end local v16    # "nPhotos":I
    .end local v18    # "pi":I
    .end local v21    # "v":Landroid/view/View;
    :cond_13
    const v2, 0x7f06003a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method public setPressed(Z)V
    .locals 4
    .param p1, "p"    # Z

    .prologue
    .line 311
    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/NewsItemView;->lastPressed:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 314
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->invalidate()V

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "p"    # Z

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/HighlightDrawable;->isSel()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 308
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    goto :goto_0
.end method

.method public updateDate()V
    .locals 3

    .prologue
    .line 233
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "t":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView;->ta:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    const v1, 0x7f06003b

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iput-object v0, p0, Lcom/vkontakte/android/NewsItemView;->ta:Ljava/lang/String;

    .line 238
    :cond_0
    return-void
.end method

.method public updateLikes()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/vkontakte/android/NewsItemView;->updateInfoLine()V

    .line 242
    return-void
.end method
