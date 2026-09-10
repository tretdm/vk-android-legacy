.class Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;
.super Lcom/vkontakte/android/ui/MultiSectionAdapter;
.source "GamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/GamesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CatalogAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GamesFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/GamesFragment;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    .line 337
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/GamesFragment;Lcom/vkontakte/android/fragments/GamesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/GamesFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/GamesFragment$1;

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;-><init>(Lcom/vkontakte/android/fragments/GamesFragment;)V

    return-void
.end method


# virtual methods
.method public getHeaderLayoutResource()I
    .locals 1

    .prologue
    .line 334
    const v0, 0x7f03003c

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$700(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$700(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(II)J
    .locals 2
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$700(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/data/ApiApplication;

    iget v0, v0, Lcom/vkontakte/android/data/ApiApplication;->id:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    const v1, 0x7f0d010f

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/GamesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 10
    .param p1, "section"    # I
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/high16 v9, 0x3f800000    # 1.0f

    .line 288
    move-object v2, p3

    .line 289
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_0

    .line 290
    iget-object v3, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/GamesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v6, 0x7f030002

    invoke-static {v3, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 291
    new-instance v1, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter$ViewHolder;

    invoke-direct {v1, p0, v7}, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter$ViewHolder;-><init>(Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;Lcom/vkontakte/android/fragments/GamesFragment$1;)V

    .line 292
    .local v1, "holder":Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter$ViewHolder;
    const v3, 0x7f080026

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 293
    const v3, 0x7f080027

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 294
    const v3, 0x7f080028

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter$ViewHolder;->subtitle2:Landroid/widget/TextView;

    .line 295
    const v3, 0x7f080025

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 296
    const v3, 0x7f080029

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter$ViewHolder;->newText:Landroid/widget/TextView;

    .line 297
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 300
    .end local v1    # "holder":Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter$ViewHolder;
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/GamesFragment;->access$700(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/data/ApiApplication;

    .line 301
    .local v0, "app":Lcom/vkontakte/android/data/ApiApplication;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter$ViewHolder;

    .line 302
    .restart local v1    # "holder":Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter$ViewHolder;
    iget-object v3, v1, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/vkontakte/android/data/ApiApplication;->title:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v3, v1, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/vkontakte/android/data/ApiApplication;->genre:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v6, v1, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter$ViewHolder;->subtitle2:Landroid/widget/TextView;

    iget v3, v0, Lcom/vkontakte/android/data/ApiApplication;->friends:I

    if-lez v3, :cond_1

    const v3, 0x7f070013

    iget v7, v0, Lcom/vkontakte/android/data/ApiApplication;->friends:I

    iget-object v8, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-virtual {v8}, Lcom/vkontakte/android/fragments/GamesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v6, v1, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter$ViewHolder;->newText:Landroid/widget/TextView;

    iget-boolean v3, v0, Lcom/vkontakte/android/data/ApiApplication;->isNew:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v3, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/GamesFragment;->access$1300(Lcom/vkontakte/android/fragments/GamesFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v6

    iget-object v7, v0, Lcom/vkontakte/android/data/ApiApplication;->icons:[Ljava/lang/String;

    sget v3, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v3, v3, v9

    if-lez v3, :cond_3

    move v3, v4

    :goto_2
    aget-object v3, v7, v3

    invoke-virtual {v6, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 308
    iget-object v3, v1, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/GamesFragment;->access$1300(Lcom/vkontakte/android/fragments/GamesFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v6

    iget-object v7, v0, Lcom/vkontakte/android/data/ApiApplication;->icons:[Ljava/lang/String;

    sget v8, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    :goto_3
    aget-object v4, v7, v4

    invoke-virtual {v6, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 312
    :goto_4
    const v3, 0x7f02003d

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 314
    return-object v2

    .line 304
    :cond_1
    const v3, 0x7f070016

    iget v7, v0, Lcom/vkontakte/android/data/ApiApplication;->members:I

    iget-object v8, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-virtual {v8}, Lcom/vkontakte/android/fragments/GamesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 305
    :cond_2
    const/16 v3, 0x8

    goto :goto_1

    :cond_3
    move v3, v5

    .line 307
    goto :goto_2

    :cond_4
    move v4, v5

    .line 308
    goto :goto_3

    .line 310
    :cond_5
    iget-object v3, v1, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v4, 0x7f020074

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$700(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
