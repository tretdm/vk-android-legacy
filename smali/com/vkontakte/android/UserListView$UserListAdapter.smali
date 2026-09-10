.class public Lcom/vkontakte/android/UserListView$UserListAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/UserListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UserListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/UserListView;


# direct methods
.method protected constructor <init>(Lcom/vkontakte/android/UserListView;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/vkontakte/android/UserListView$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/vkontakte/android/UserListView$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v0, v0, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 212
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    const v7, 0x7f060070

    const v6, 0x7f06006f

    const/4 v2, 0x0

    const v5, 0x7f060071

    .line 217
    if-nez p2, :cond_0

    .line 218
    iget-object v1, p0, Lcom/vkontakte/android/UserListView$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/UserListView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/vkontakte/android/UserListView$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListView;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserListView;->hasExtended:Z

    if-eqz v1, :cond_2

    const v1, 0x7f03001c

    :goto_0
    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/vkontakte/android/UserListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 219
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42680000    # 58.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    new-instance v1, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct {v1}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    invoke-static {p2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 222
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v3, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 223
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/UserListView$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/UserListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 224
    iget-object v1, p0, Lcom/vkontakte/android/UserListView$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListView;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserListView;->hasExtended:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f020149

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 226
    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 227
    iget-object v1, p0, Lcom/vkontakte/android/UserListView$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v1, v1, Lcom/vkontakte/android/UserListView;->users:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 228
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v1, v0, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v1, p0, Lcom/vkontakte/android/UserListView$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListView;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserListView;->hasExtended:Z

    if-eqz v1, :cond_1

    .line 232
    const v1, 0x7f060073

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/UserListView$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v1, v1, Lcom/vkontakte/android/UserListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v2, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vkontakte/android/UserListView$UserListAdapter;->this$0:Lcom/vkontakte/android/UserListView;

    iget-object v2, v2, Lcom/vkontakte/android/UserListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 240
    :goto_2
    return-object p2

    .line 218
    .end local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_2
    const v1, 0x7f03001a

    goto/16 :goto_0

    .line 229
    .restart local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_3
    const/16 v1, 0x8

    goto :goto_1

    .line 238
    :cond_4
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020206

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method
