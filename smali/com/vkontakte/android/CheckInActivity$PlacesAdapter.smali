.class Lcom/vkontakte/android/CheckInActivity$PlacesAdapter;
.super Landroid/widget/BaseAdapter;
.source "CheckInActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/CheckInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlacesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CheckInActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/CheckInActivity;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/vkontakte/android/CheckInActivity$PlacesAdapter;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/CheckInActivity;Lcom/vkontakte/android/CheckInActivity$PlacesAdapter;)V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0, p1}, Lcom/vkontakte/android/CheckInActivity$PlacesAdapter;-><init>(Lcom/vkontakte/android/CheckInActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$PlacesAdapter;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$0(Lcom/vkontakte/android/CheckInActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 430
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 435
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$PlacesAdapter;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$0(Lcom/vkontakte/android/CheckInActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/GeoPlace;

    iget v0, v0, Lcom/vkontakte/android/GeoPlace;->id:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v9, 0x7f020187

    const/4 v8, 0x0

    .line 440
    move-object v2, p2

    .line 441
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_0

    .line 442
    iget-object v3, p0, Lcom/vkontakte/android/CheckInActivity$PlacesAdapter;->this$0:Lcom/vkontakte/android/CheckInActivity;

    const v4, 0x7f030057

    invoke-static {v3, v4, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 443
    new-instance v0, Lcom/vkontakte/android/CheckInActivity$ViewHolder;

    iget-object v3, p0, Lcom/vkontakte/android/CheckInActivity$PlacesAdapter;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-direct {v0, v3, v8}, Lcom/vkontakte/android/CheckInActivity$ViewHolder;-><init>(Lcom/vkontakte/android/CheckInActivity;Lcom/vkontakte/android/CheckInActivity$ViewHolder;)V

    .line 444
    .local v0, "holder":Lcom/vkontakte/android/CheckInActivity$ViewHolder;
    const v3, 0x7f0800a3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/vkontakte/android/CheckInActivity$ViewHolder;->title:Landroid/widget/TextView;

    .line 445
    const v3, 0x7f0800a5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/vkontakte/android/CheckInActivity$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 446
    const v3, 0x7f080112

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/vkontakte/android/CheckInActivity$ViewHolder;->checkins:Landroid/widget/TextView;

    .line 447
    const v3, 0x7f0800a1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/vkontakte/android/CheckInActivity$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 448
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 451
    .end local v0    # "holder":Lcom/vkontakte/android/CheckInActivity$ViewHolder;
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/CheckInActivity$PlacesAdapter;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v3}, Lcom/vkontakte/android/CheckInActivity;->access$0(Lcom/vkontakte/android/CheckInActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/GeoPlace;

    .line 452
    .local v1, "place":Lcom/vkontakte/android/GeoPlace;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/CheckInActivity$ViewHolder;

    .line 453
    .restart local v0    # "holder":Lcom/vkontakte/android/CheckInActivity$ViewHolder;
    iget-object v3, v0, Lcom/vkontakte/android/CheckInActivity$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/vkontakte/android/GeoPlace;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v4, v0, Lcom/vkontakte/android/CheckInActivity$ViewHolder;->subtitle:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/vkontakte/android/GeoPlace;->distance:I

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/vkontakte/android/GeoPlace;->distance:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/vkontakte/android/CheckInActivity$PlacesAdapter;->this$0:Lcom/vkontakte/android/CheckInActivity;

    const v7, 0x7f060232

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/CheckInActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/vkontakte/android/GeoPlace;->address:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v4, v0, Lcom/vkontakte/android/CheckInActivity$ViewHolder;->checkins:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Lcom/vkontakte/android/GeoPlace;->checkins:I

    if-lez v3, :cond_2

    iget v3, v1, Lcom/vkontakte/android/GeoPlace;->checkins:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v4, v0, Lcom/vkontakte/android/CheckInActivity$ViewHolder;->checkins:Landroid/widget/TextView;

    iget v3, v1, Lcom/vkontakte/android/GeoPlace;->checkins:I

    if-lez v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    iget v3, v1, Lcom/vkontakte/android/GeoPlace;->id:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 459
    iget-object v3, v0, Lcom/vkontakte/android/CheckInActivity$ViewHolder;->photo:Landroid/widget/ImageView;

    const v4, 0x7f020123

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 469
    :goto_3
    return-object v2

    .line 454
    :cond_1
    const-string v3, ""

    goto :goto_0

    .line 455
    :cond_2
    const-string v3, ""

    goto :goto_1

    .line 456
    :cond_3
    const/4 v3, 0x4

    goto :goto_2

    .line 460
    :cond_4
    iget v3, v1, Lcom/vkontakte/android/GeoPlace;->id:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_5

    .line 461
    iget-object v3, v0, Lcom/vkontakte/android/CheckInActivity$ViewHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 462
    :cond_5
    iget-object v3, v1, Lcom/vkontakte/android/GeoPlace;->photo:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 463
    iget-object v3, v0, Lcom/vkontakte/android/CheckInActivity$ViewHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 464
    :cond_6
    iget-object v3, p0, Lcom/vkontakte/android/CheckInActivity$PlacesAdapter;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v3}, Lcom/vkontakte/android/CheckInActivity;->access$1(Lcom/vkontakte/android/CheckInActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    iget-object v4, v1, Lcom/vkontakte/android/GeoPlace;->photo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 465
    iget-object v3, v0, Lcom/vkontakte/android/CheckInActivity$ViewHolder;->photo:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/vkontakte/android/CheckInActivity$PlacesAdapter;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v4}, Lcom/vkontakte/android/CheckInActivity;->access$1(Lcom/vkontakte/android/CheckInActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    iget-object v5, v1, Lcom/vkontakte/android/GeoPlace;->photo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 467
    :cond_7
    iget-object v3, v0, Lcom/vkontakte/android/CheckInActivity$ViewHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method
