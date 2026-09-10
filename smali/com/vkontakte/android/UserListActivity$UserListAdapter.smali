.class public Lcom/vkontakte/android/UserListActivity$UserListAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/UserListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UserListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/UserListActivity;


# direct methods
.method protected constructor <init>(Lcom/vkontakte/android/UserListActivity;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v0, v0, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 261
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x7f060067

    const v5, 0x7f060066

    const v4, 0x7f060068

    .line 266
    if-nez p2, :cond_0

    .line 267
    iget-object v2, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserListActivity;->hasExtended:Z

    if-eqz v1, :cond_2

    const v1, 0x7f030017

    :goto_0
    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 268
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x42680000    # 58.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    new-instance v1, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct {v1}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    invoke-static {p2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 271
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 272
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/UserListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 273
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserListActivity;->hasExtended:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f02012f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v1, v1, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 276
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v1, v0, Lcom/vkontakte/android/UserProfile;->online:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserListActivity;->hasExtended:Z

    if-eqz v1, :cond_1

    .line 280
    const v1, 0x7f060069

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v1, v1, Lcom/vkontakte/android/UserListActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v2, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 284
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListActivity;

    iget-object v2, v2, Lcom/vkontakte/android/UserListActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 288
    :goto_2
    return-object p2

    .line 267
    .end local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_2
    const v1, 0x7f030016

    goto/16 :goto_0

    .line 277
    .restart local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_3
    const/16 v1, 0x8

    goto :goto_1

    .line 286
    :cond_4
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0201e8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method
