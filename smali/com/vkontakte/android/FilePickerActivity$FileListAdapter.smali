.class Lcom/vkontakte/android/FilePickerActivity$FileListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FilePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/FilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FilePickerActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/FilePickerActivity;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/vkontakte/android/FilePickerActivity$FileListAdapter;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/FilePickerActivity;Lcom/vkontakte/android/FilePickerActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/FilePickerActivity;
    .param p2, "x1"    # Lcom/vkontakte/android/FilePickerActivity$1;

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FilePickerActivity$FileListAdapter;-><init>(Lcom/vkontakte/android/FilePickerActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity$FileListAdapter;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/FilePickerActivity;->access$500(Lcom/vkontakte/android/FilePickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity$FileListAdapter;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/FilePickerActivity;->access$500(Lcom/vkontakte/android/FilePickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 331
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity$FileListAdapter;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/FilePickerActivity;->access$500(Lcom/vkontakte/android/FilePickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/FilePickerActivity$ListItem;

    iget-object v0, v0, Lcom/vkontakte/android/FilePickerActivity$ListItem;->subtitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v9, 0x7f0800a6

    const/4 v8, 0x0

    const v7, 0x7f0800a7

    .line 344
    move-object v1, p2

    .line 345
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/vkontakte/android/FilePickerActivity$FileListAdapter;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/FilePickerActivity;->access$500(Lcom/vkontakte/android/FilePickerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/FilePickerActivity$ListItem;

    .line 346
    .local v0, "item":Lcom/vkontakte/android/FilePickerActivity$ListItem;
    if-nez v1, :cond_0

    .line 347
    iget-object v2, p0, Lcom/vkontakte/android/FilePickerActivity$FileListAdapter;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    const v3, 0x7f03002e

    invoke-static {v2, v3, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 348
    iget-object v2, v0, Lcom/vkontakte/android/FilePickerActivity$ListItem;->subtitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 349
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 352
    :cond_0
    const v2, 0x7f0800a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/vkontakte/android/FilePickerActivity$ListItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    const v2, 0x7f0800a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/vkontakte/android/FilePickerActivity$ListItem;->ext:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/vkontakte/android/FilePickerActivity$ListItem;->ext:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/vkontakte/android/FilePickerActivity$ListItem;->subtitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v2, v0, Lcom/vkontakte/android/FilePickerActivity$ListItem;->thumb:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 357
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 358
    iget-object v2, p0, Lcom/vkontakte/android/FilePickerActivity$FileListAdapter;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/FilePickerActivity;->access$1100(Lcom/vkontakte/android/FilePickerActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/FilePickerActivity$ListItem;->thumb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vkontakte/android/FilePickerActivity$FileListAdapter;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/FilePickerActivity;->access$1100(Lcom/vkontakte/android/FilePickerActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    iget-object v4, v0, Lcom/vkontakte/android/FilePickerActivity$ListItem;->thumb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 370
    :goto_0
    return-object v1

    .line 361
    :cond_1
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 362
    :cond_2
    iget v2, v0, Lcom/vkontakte/android/FilePickerActivity$ListItem;->icon:I

    if-eqz v2, :cond_3

    .line 364
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget v3, v0, Lcom/vkontakte/android/FilePickerActivity$ListItem;->icon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 365
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 368
    :cond_3
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x2

    return v0
.end method
