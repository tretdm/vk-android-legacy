.class Lcom/vkontakte/android/MenuListView$MenuAdapter;
.super Lcom/vkontakte/android/ui/MultiSectionAdapter;
.source "MenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MenuListView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/MenuListView;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/MenuListView;Lcom/vkontakte/android/MenuListView$MenuAdapter;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/vkontakte/android/MenuListView$MenuAdapter;-><init>(Lcom/vkontakte/android/MenuListView;)V

    return-void
.end method


# virtual methods
.method public getExtraViewTypeCount()I
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x3

    return v0
.end method

.method public getItemCount(I)I
    .locals 2
    .param p1, "section"    # I

    .prologue
    const/4 v1, 0x5

    .line 356
    packed-switch p1, :pswitch_data_0

    .line 366
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 358
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$6(Lcom/vkontakte/android/MenuListView;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    .line 360
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 362
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$2(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 364
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getItemId(II)J
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 372
    packed-switch p1, :pswitch_data_0

    .line 379
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    .line 374
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    int-to-long v0, v0

    goto :goto_1

    .line 376
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$2(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    iget v0, v0, Lcom/vkontakte/android/api/Group;->id:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    neg-int v0, v0

    int-to-long v0, v0

    goto :goto_1

    .line 378
    :catch_0
    move-exception v0

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemViewType(II)I
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    const/4 v0, 0x3

    .line 402
    if-nez p1, :cond_2

    .line 403
    if-nez p2, :cond_1

    const/4 v0, 0x2

    .line 407
    :cond_0
    :goto_0
    return v0

    .line 404
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 406
    :cond_2
    if-ne p1, v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x4

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 336
    packed-switch p1, :pswitch_data_0

    .line 346
    const-string v0, ""

    :goto_0
    return-object v0

    .line 338
    :pswitch_0
    const-string v0, ""

    goto :goto_0

    .line 340
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 342
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 344
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 12
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const v11, 0x7f020091

    const/16 v6, 0x8

    const/4 v10, -0x1

    const/4 v5, 0x0

    const v9, 0x7f060066

    .line 198
    if-nez p1, :cond_8

    .line 199
    if-nez p2, :cond_4

    .line 200
    if-nez p3, :cond_0

    .line 201
    iget-object v6, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f03001f

    invoke-static {v6, v7, v5}, Lcom/vkontakte/android/MenuListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 202
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    const/high16 v6, 0x42380000    # 46.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-direct {v5, v10, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    const v5, 0x7f020092

    invoke-virtual {p3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 205
    invoke-static {p3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 207
    :cond_0
    const v5, 0x7f060068

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v6}, Lcom/vkontakte/android/MenuListView;->access$3(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const v5, 0x7f060067

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0201b1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v5}, Lcom/vkontakte/android/MenuListView;->access$4(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v6}, Lcom/vkontakte/android/MenuListView;->access$5(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 212
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v6}, Lcom/vkontakte/android/MenuListView;->access$4(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v7}, Lcom/vkontakte/android/MenuListView;->access$5(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    move-object v5, p3

    .line 331
    :cond_2
    :goto_1
    return-object v5

    .line 214
    :cond_3
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0201e8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 216
    :cond_4
    if-nez p3, :cond_5

    .line 217
    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v7}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f03001e

    invoke-static {v7, v8, v5}, Lcom/vkontakte/android/MenuListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 218
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    iget v7, v7, Lcom/vkontakte/android/MenuListView;->itemPadding:I

    add-int/lit8 v7, v7, 0x27

    int-to-float v7, v7

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v5, v10, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    invoke-virtual {p3, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 221
    invoke-static {p3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 223
    :cond_5
    const v5, 0x7f06009a

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v7}, Lcom/vkontakte/android/MenuListView;->access$6(Lcom/vkontakte/android/MenuListView;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, p2

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "counter":I
    const/4 v2, 0x0

    .line 226
    .local v2, "key":Ljava/lang/String;
    sparse-switch p2, :sswitch_data_0

    .line 246
    :goto_2
    if-eqz v2, :cond_6

    .line 247
    sget-object v5, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 250
    :cond_6
    if-nez v0, :cond_7

    const v5, 0x7f06009b

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 256
    :goto_3
    if-eqz p2, :cond_1

    const v5, 0x7f060099

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v6}, Lcom/vkontakte/android/MenuListView;->access$7(Lcom/vkontakte/android/MenuListView;)[I

    move-result-object v6

    aget v6, v6, p2

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 228
    :sswitch_0
    const-string v2, "friends"

    .line 229
    goto :goto_2

    .line 237
    :sswitch_1
    const-string v2, "messages"

    .line 238
    goto :goto_2

    .line 243
    :sswitch_2
    const-string v2, "notifications"

    goto :goto_2

    .line 252
    :cond_7
    const v5, 0x7f06009b

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 253
    const v5, 0x7f06009b

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 263
    .end local v0    # "counter":I
    .end local v2    # "key":Ljava/lang/String;
    :cond_8
    const/4 v7, 0x1

    if-ne p1, v7, :cond_c

    .line 264
    if-nez p3, :cond_9

    .line 265
    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v7}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f03001f

    invoke-static {v7, v8, v5}, Lcom/vkontakte/android/MenuListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 266
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    iget v7, v7, Lcom/vkontakte/android/MenuListView;->itemPadding:I

    add-int/lit8 v7, v7, 0x27

    int-to-float v7, v7

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v5, v10, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    invoke-virtual {p3, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 269
    invoke-static {p3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 271
    :cond_9
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v5}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    .line 272
    .local v3, "p":Lcom/vkontakte/android/UserProfile;
    const v5, 0x7f060068

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v7, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const v5, 0x7f060067

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-boolean v5, v3, Lcom/vkontakte/android/UserProfile;->online:Z

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v5}, Lcom/vkontakte/android/MenuListView;->access$4(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v5

    iget-object v6, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 277
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v6}, Lcom/vkontakte/android/MenuListView;->access$4(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v6

    iget-object v7, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_5
    move-object v5, p3

    .line 281
    goto/16 :goto_1

    :cond_a
    move v5, v6

    .line 273
    goto :goto_4

    .line 279
    :cond_b
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0201e8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 283
    .end local v3    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_c
    const/4 v7, 0x2

    if-ne p1, v7, :cond_f

    .line 284
    if-nez p3, :cond_d

    .line 285
    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v7}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f03001f

    invoke-static {v7, v8, v5}, Lcom/vkontakte/android/MenuListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 286
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    iget v7, v7, Lcom/vkontakte/android/MenuListView;->itemPadding:I

    add-int/lit8 v7, v7, 0x27

    int-to-float v7, v7

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v5, v10, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    invoke-virtual {p3, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 289
    invoke-static {p3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 291
    :cond_d
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v5}, Lcom/vkontakte/android/MenuListView;->access$2(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/Group;

    .line 292
    .local v1, "g":Lcom/vkontakte/android/api/Group;
    const v5, 0x7f060068

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v7, v1, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    const v5, 0x7f060067

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v5}, Lcom/vkontakte/android/MenuListView;->access$4(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v5

    iget-object v6, v1, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 297
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v6}, Lcom/vkontakte/android/MenuListView;->access$4(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v6

    iget-object v7, v1, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_6
    move-object v5, p3

    .line 301
    goto/16 :goto_1

    .line 299
    :cond_e
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0201e8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 303
    .end local v1    # "g":Lcom/vkontakte/android/api/Group;
    :cond_f
    const/4 v7, 0x3

    if-ne p1, v7, :cond_2

    .line 304
    if-nez p3, :cond_10

    .line 305
    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v7}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f03001f

    invoke-static {v7, v8, v5}, Lcom/vkontakte/android/MenuListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 306
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    iget-object v7, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    iget v7, v7, Lcom/vkontakte/android/MenuListView;->itemPadding:I

    add-int/lit8 v7, v7, 0x27

    int-to-float v7, v7

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v5, v10, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    invoke-virtual {p3, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 309
    invoke-static {p3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 311
    :cond_10
    const v5, 0x7f060067

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 312
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 314
    const-string v4, ""

    .line 315
    .local v4, "title":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 327
    :goto_7
    const v5, 0x7f060068

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v5, p3

    .line 329
    goto/16 :goto_1

    .line 317
    :pswitch_0
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v5}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 318
    goto :goto_7

    .line 320
    :pswitch_1
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v5}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 321
    goto :goto_7

    .line 323
    :pswitch_2
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v5}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900a2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 226
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 3
    .param p1, "section"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 384
    packed-switch p1, :pswitch_data_0

    .line 394
    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 388
    :pswitch_1
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 390
    :pswitch_2
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$2(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 392
    goto :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setHeaderStyle(Landroid/widget/TextView;)V
    .locals 6
    .param p1, "t"    # Landroid/widget/TextView;

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x40e00000    # 7.0f

    .line 411
    const v0, 0x7f020008

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 412
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 413
    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 414
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 415
    const v0, 0x322bcc77    # 1.0E-8f

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x1000000

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 416
    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 417
    sget-object v0, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 418
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/high16 v1, 0x41d40000    # 26.5f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-direct {v0, v5, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    return-void
.end method
