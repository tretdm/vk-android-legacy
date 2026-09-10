.class Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProfileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileInfoAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1440
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ProfileView;Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;)V
    .locals 0

    .prologue
    .line 1440
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;-><init>(Lcom/vkontakte/android/ProfileView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1445
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$10(Lcom/vkontakte/android/ProfileView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1450
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1455
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "pos"    # I

    .prologue
    const/4 v1, 0x0

    .line 1467
    if-nez p1, :cond_1

    .line 1480
    :cond_0
    :goto_0
    return v1

    .line 1469
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileView;->access$10(Lcom/vkontakte/android/ProfileView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    sub-int v2, p1, v2

    add-int/lit8 v0, v2, -0x1

    .line 1470
    .local v0, "ipos":I
    if-nez v0, :cond_3

    .line 1471
    const/4 v1, 0x5

    goto :goto_0

    .end local v0    # "ipos":I
    :cond_2
    move v2, v1

    .line 1469
    goto :goto_1

    .line 1472
    .restart local v0    # "ipos":I
    :cond_3
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 1473
    const/4 v1, 0x6

    goto :goto_0

    .line 1474
    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 1475
    const/4 v1, 0x7

    goto :goto_0

    .line 1476
    :cond_5
    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 1477
    const/16 v1, 0x8

    goto :goto_0

    .line 1478
    :cond_6
    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    .line 1479
    const/16 v1, 0x9

    goto :goto_0

    .line 1480
    :cond_7
    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ProfileView$InfoItem;

    iget v1, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->type:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x2

    const v10, 0x7f08012c

    const/4 v9, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1485
    if-nez p1, :cond_2

    .line 1486
    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v4, v4, Lcom/vkontakte/android/ProfileView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/vkontakte/android/api/ExtendedUserProfile;->bigPhoto:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1487
    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$13(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f08012a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v5, v5, Lcom/vkontakte/android/ProfileView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v6}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->bigPhoto:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1490
    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$13(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v4

    .line 1560
    :goto_1
    return-object v4

    .line 1489
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$13(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f08012a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v5

    if-gez v5, :cond_1

    const v5, 0x7f0200d9

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const v5, 0x7f02024b

    goto :goto_2

    .line 1492
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$10(Lcom/vkontakte/android/ProfileView;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_3
    sub-int v4, p1, v4

    add-int/lit8 v0, v4, -0x1

    .line 1493
    .local v0, "ipos":I
    if-ltz v0, :cond_4

    .line 1494
    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto :goto_1

    .end local v0    # "ipos":I
    :cond_3
    move v4, v6

    .line 1492
    goto :goto_3

    .line 1496
    .restart local v0    # "ipos":I
    :cond_4
    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$10(Lcom/vkontakte/android/ProfileView;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1497
    move-object v3, p2

    .line 1498
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ProfileView$InfoItem;

    .line 1499
    .local v1, "item":Lcom/vkontakte/android/ProfileView$InfoItem;
    if-nez v3, :cond_5

    .line 1500
    const v2, 0x7f03005d

    .line 1501
    .local v2, "r":I
    iget v4, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->type:I

    packed-switch v4, :pswitch_data_0

    .line 1513
    :goto_4
    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v4, v2, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1514
    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$14(Lcom/vkontakte/android/ProfileView;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1516
    .end local v2    # "r":I
    :cond_5
    iget-object v4, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1517
    iget-object v4, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->tag:Ljava/lang/String;

    if-eqz v4, :cond_e

    move v4, v5

    :goto_5
    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 1519
    iget v4, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->type:I

    if-eq v4, v11, :cond_17

    .line 1520
    iget v4, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->type:I

    if-ne v4, v9, :cond_10

    .line 1521
    new-instance v4, Lcom/vkontakte/android/ProfileInfoItemBgDrawable;

    invoke-direct {v4, v6, v5, v5}, Lcom/vkontakte/android/ProfileInfoItemBgDrawable;-><init>(ZZZ)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1522
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v7}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_f

    const/high16 v7, -0x1000000

    :goto_6
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1534
    :goto_7
    iget-object v4, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->title:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 1535
    const v4, 0x7f08012b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xe

    if-lt v7, v8, :cond_1a

    iget-object v7, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->title:Ljava/lang/String;

    :goto_8
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1536
    :cond_6
    const v4, 0x7f08012b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v4, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->title:Ljava/lang/String;

    if-eqz v4, :cond_1b

    move v4, v6

    :goto_9
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1537
    iget-object v4, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->data:Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    .line 1538
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v7, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->data:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1539
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v7, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->tag:Ljava/lang/String;

    if-nez v7, :cond_1c

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    :goto_a
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1541
    :cond_7
    iget-object v4, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->subData:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget v4, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->type:I

    if-eq v4, v5, :cond_8

    .line 1542
    const v4, 0x7f08012d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v7, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->subData:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1543
    :cond_8
    iget v4, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->type:I

    if-eqz v4, :cond_9

    iget v4, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->type:I

    if-eq v4, v5, :cond_9

    iget v4, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->type:I

    if-ne v4, v9, :cond_a

    .line 1544
    :cond_9
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v4, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->data:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1d

    move v4, v6

    :goto_b
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1545
    :cond_a
    iget v4, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->type:I

    if-eqz v4, :cond_b

    iget v4, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->type:I

    if-ne v4, v9, :cond_c

    .line 1546
    :cond_b
    const v4, 0x7f08012d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v7, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->subData:Ljava/lang/String;

    if-eqz v7, :cond_1e

    :goto_c
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1548
    :cond_c
    iget v4, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->type:I

    if-ne v4, v5, :cond_d

    .line 1549
    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v4, v4, Lcom/vkontakte/android/ProfileView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v5, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->subData:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1550
    const v4, 0x7f08012f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v5, v5, Lcom/vkontakte/android/ProfileView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v6, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->subData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1554
    :goto_d
    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$15(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1555
    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$15(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    move-object v4, v3

    .line 1558
    goto/16 :goto_1

    .line 1504
    .restart local v2    # "r":I
    :pswitch_0
    const v2, 0x7f03005d

    .line 1505
    goto/16 :goto_4

    .line 1507
    :pswitch_1
    const v2, 0x7f03005e

    .line 1508
    goto/16 :goto_4

    .line 1510
    :pswitch_2
    const v2, 0x7f03005f

    goto/16 :goto_4

    .end local v2    # "r":I
    :cond_e
    move v4, v6

    .line 1517
    goto/16 :goto_5

    .line 1522
    :cond_f
    const/high16 v7, 0x66000000

    goto/16 :goto_6

    .line 1523
    :cond_10
    add-int/lit8 v4, p1, -0x1

    if-eqz v4, :cond_11

    add-int/lit8 v4, p1, -0x1

    if-ne v4, v5, :cond_13

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v7, p1, -0x2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ProfileView$InfoItem;

    iget v4, v4, Lcom/vkontakte/android/ProfileView$InfoItem;->type:I

    if-ne v4, v9, :cond_13

    .line 1524
    :cond_11
    new-instance v7, Lcom/vkontakte/android/ProfileInfoItemBgDrawable;

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne p1, v4, :cond_12

    move v4, v5

    :goto_e
    invoke-direct {v7, v6, v5, v4}, Lcom/vkontakte/android/ProfileInfoItemBgDrawable;-><init>(ZZZ)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    :cond_12
    move v4, v6

    goto :goto_e

    .line 1525
    :cond_13
    add-int/lit8 v4, p1, -0x1

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v7}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_15

    .line 1526
    new-instance v7, Lcom/vkontakte/android/ProfileInfoItemBgDrawable;

    add-int/lit8 v4, p1, -0x2

    if-ltz v4, :cond_14

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v8, p1, -0x2

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ProfileView$InfoItem;

    iget v4, v4, Lcom/vkontakte/android/ProfileView$InfoItem;->type:I

    if-ne v4, v11, :cond_14

    move v4, v6

    :goto_f
    invoke-direct {v7, v4, v6, v5}, Lcom/vkontakte/android/ProfileInfoItemBgDrawable;-><init>(ZZZ)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    :cond_14
    move v4, v5

    goto :goto_f

    .line 1528
    :cond_15
    new-instance v7, Lcom/vkontakte/android/ProfileInfoItemBgDrawable;

    add-int/lit8 v4, p1, -0x2

    if-ltz v4, :cond_16

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v8, p1, -0x2

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ProfileView$InfoItem;

    iget v4, v4, Lcom/vkontakte/android/ProfileView$InfoItem;->type:I

    if-ne v4, v11, :cond_16

    move v4, v6

    :goto_10
    invoke-direct {v7, v4, v6, v6}, Lcom/vkontakte/android/ProfileInfoItemBgDrawable;-><init>(ZZZ)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    :cond_16
    move v4, v5

    goto :goto_10

    .line 1531
    :cond_17
    new-instance v7, Lcom/vkontakte/android/ProfileInfoHeaderBgDrawable;

    add-int/lit8 v4, p1, -0x1

    if-eqz v4, :cond_19

    add-int/lit8 v4, p1, -0x1

    if-ne v4, v5, :cond_18

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v4}, Lcom/vkontakte/android/ProfileView;->access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v8, p1, -0x2

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ProfileView$InfoItem;

    iget v4, v4, Lcom/vkontakte/android/ProfileView$InfoItem;->type:I

    if-eq v4, v9, :cond_19

    :cond_18
    move v4, v6

    :goto_11
    invoke-direct {v7, v4}, Lcom/vkontakte/android/ProfileInfoHeaderBgDrawable;-><init>(Z)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    :cond_19
    move v4, v5

    goto :goto_11

    .line 1535
    :cond_1a
    iget-object v7, v1, Lcom/vkontakte/android/ProfileView$InfoItem;->title:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_8

    .line 1536
    :cond_1b
    const/16 v4, 0x8

    goto/16 :goto_9

    .line 1539
    :cond_1c
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 1544
    :cond_1d
    const/16 v4, 0x8

    goto/16 :goto_b

    .line 1546
    :cond_1e
    const/16 v6, 0x8

    goto/16 :goto_c

    .line 1552
    :cond_1f
    const v4, 0x7f08012f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f020247

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 1560
    .end local v1    # "item":Lcom/vkontakte/android/ProfileView$InfoItem;
    .end local v3    # "view":Landroid/view/View;
    :cond_20
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1501
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1463
    const/16 v0, 0xb

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 1459
    const/4 v0, 0x0

    return v0
.end method
