.class Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;
.super Lcom/vkontakte/android/ui/MultiSectionAdapter;
.source "QuickSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/QuickSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/QuickSearchActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/QuickSearchActivity;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/QuickSearchActivity;Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;)V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;-><init>(Lcom/vkontakte/android/QuickSearchActivity;)V

    return-void
.end method


# virtual methods
.method public getExtraViewTypeCount()I
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x2

    return v0
.end method

.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 426
    packed-switch p1, :pswitch_data_0

    .line 432
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 428
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$0(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 430
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$1(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemId(II)J
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 438
    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$0(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    int-to-long v0, v0

    .line 440
    :goto_1
    return-wide v0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$1(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method public getItemViewType(II)I
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 456
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$0(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$1(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x2

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 415
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const v1, 0x7f0600d9

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/QuickSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 9
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    .line 380
    if-nez p1, :cond_2

    iget-object v5, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v5}, Lcom/vkontakte/android/QuickSearchActivity;->access$0(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    :goto_0
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 381
    .local v1, "profile":Lcom/vkontakte/android/UserProfile;
    move-object v4, p3

    .line 382
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_0

    .line 383
    iget-object v6, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    iget-object v5, v1, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    if-eqz v5, :cond_3

    const v5, 0x7f030064

    :goto_1
    const/4 v7, 0x0

    invoke-static {v6, v5, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 385
    :cond_0
    if-nez p2, :cond_4

    const v5, 0x7f0200de

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 386
    const/high16 v5, 0x41500000    # 13.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x41500000    # 13.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 387
    iget-boolean v5, v1, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v5, :cond_5

    .line 388
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 389
    .local v2, "sb":Landroid/text/SpannableStringBuilder;
    iget-object v5, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 390
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v5

    const-string v6, "F"

    invoke-virtual {v5, v6}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v3

    .line 391
    .local v3, "sp":Landroid/text/Spannable;
    iget-object v5, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/QuickSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201b5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 392
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 393
    new-instance v5, Landroid/text/style/ImageSpan;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v3, v5, v6, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 394
    const-string v5, "\u00a0"

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 395
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 396
    const v5, 0x7f0800a3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "sb":Landroid/text/SpannableStringBuilder;
    .end local v3    # "sp":Landroid/text/Spannable;
    :goto_3
    iget-object v5, v1, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 401
    const v5, 0x7f0800a5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v5}, Lcom/vkontakte/android/QuickSearchActivity;->access$2(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v5

    iget-object v6, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 404
    const v5, 0x7f0800a1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v6}, Lcom/vkontakte/android/QuickSearchActivity;->access$2(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v6

    iget-object v7, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 408
    :goto_4
    const v5, 0x7f0800a2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v5, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    if-lez v5, :cond_8

    iget v5, v1, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v5, :cond_8

    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 410
    return-object v4

    .line 380
    .end local v1    # "profile":Lcom/vkontakte/android/UserProfile;
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v5}, Lcom/vkontakte/android/QuickSearchActivity;->access$1(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    goto/16 :goto_0

    .line 383
    .restart local v1    # "profile":Lcom/vkontakte/android/UserProfile;
    .restart local v4    # "view":Landroid/view/View;
    :cond_3
    const v5, 0x7f030063

    goto/16 :goto_1

    .line 385
    :cond_4
    const v5, 0x7f0200dd

    goto/16 :goto_2

    .line 398
    :cond_5
    const v5, 0x7f0800a3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 406
    :cond_6
    const v5, 0x7f0800a1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget v6, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    if-lez v6, :cond_7

    const v6, 0x7f02024a

    :goto_6
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_7
    const v6, 0x7f0200d8

    goto :goto_6

    .line 408
    :cond_8
    const/16 v5, 0x8

    goto :goto_5
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 2
    .param p1, "section"    # I

    .prologue
    const/4 v0, 0x1

    .line 445
    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$1(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHeaderStyle(Landroid/widget/TextView;)V
    .locals 5
    .param p1, "t"    # Landroid/widget/TextView;

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x41500000    # 13.0f

    .line 460
    const v0, 0x7f020096

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 461
    const v0, -0xb6652e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 462
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 463
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 464
    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 465
    sget-object v0, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 467
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 468
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 471
    :cond_0
    return-void
.end method
