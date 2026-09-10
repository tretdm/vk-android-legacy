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
    .line 182
    iput-object p1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 226
    packed-switch p1, :pswitch_data_0

    .line 232
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 228
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$100(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$200(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 226
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
    .line 238
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x2

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 210
    packed-switch p1, :pswitch_data_0

    .line 216
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 212
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0800ed

    const v4, 0x7f0800ad

    .line 185
    if-nez p3, :cond_0

    .line 186
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    const v2, 0x7f03004f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 187
    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter$1;-><init>(Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 195
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$100(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 196
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    const v1, 0x7f0800af

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$500(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v1

    iget-object v2, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$500(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 203
    :goto_1
    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 205
    return-object p3

    .line 195
    .end local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$200(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 201
    .restart local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_2
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v2, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    if-lez v2, :cond_3

    const v2, 0x7f0201ec

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    const v2, 0x7f020074

    goto :goto_2
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 3
    .param p1, "section"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 243
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 245
    :pswitch_0
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$100(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$200(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
