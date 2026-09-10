.class public Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;
.super Lcom/vkontakte/android/ui/MultiSectionAdapter;
.source "NewsfeedBanlistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/NewsfeedBanlistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BanListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;


# direct methods
.method protected constructor <init>(Lcom/vkontakte/android/NewsfeedBanlistActivity;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;)Lcom/vkontakte/android/NewsfeedBanlistActivity;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    return-object v0
.end method


# virtual methods
.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 203
    packed-switch p1, :pswitch_data_0

    .line 209
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 205
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$1(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$2(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 203
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
    .line 215
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x2

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 187
    packed-switch p1, :pswitch_data_0

    .line 193
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 189
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const v7, 0x7f0600b5

    const v6, 0x7f06006f

    const/4 v2, 0x0

    const v5, 0x7f060071

    .line 155
    if-nez p3, :cond_0

    .line 156
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    const v3, 0x7f03002b

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 157
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42680000    # 58.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v1, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct {v1}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-static {p3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 160
    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v3, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 161
    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 162
    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter$1;-><init>(Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    :cond_0
    invoke-virtual {p3, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 170
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$1(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 171
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$3(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v1

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 174
    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v3}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$3(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    iget-object v4, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 178
    :goto_1
    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/HighlightDrawable;

    if-nez p2, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/HighlightDrawable;->setFirst(Z)V

    .line 182
    return-object p3

    .line 170
    .end local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$2(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 176
    .restart local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_3
    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f020206

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 3
    .param p1, "section"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 220
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 222
    :pswitch_0
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$1(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 224
    :pswitch_1
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$2(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
