.class public Lcom/vkontakte/android/SuggestFriendsActivity$SuggestFriendsAdapter;
.super Lcom/vkontakte/android/UserListActivity$UserListAdapter;
.source "SuggestFriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/SuggestFriendsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SuggestFriendsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SuggestFriendsActivity;


# direct methods
.method protected constructor <init>(Lcom/vkontakte/android/SuggestFriendsActivity;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/vkontakte/android/SuggestFriendsActivity$SuggestFriendsAdapter;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    invoke-direct {p0, p1}, Lcom/vkontakte/android/UserListActivity$UserListAdapter;-><init>(Lcom/vkontakte/android/UserListActivity;)V

    return-void
.end method


# virtual methods
.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 9
    .param p1, "section"    # I
    .param p2, "pos"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const v8, 0x7f060073

    const v7, 0x7f06006f

    const v6, 0x7f060071

    const/4 v2, 0x0

    .line 217
    if-nez p3, :cond_0

    .line 218
    iget-object v1, p0, Lcom/vkontakte/android/SuggestFriendsActivity$SuggestFriendsAdapter;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    const v4, 0x7f03001c

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 219
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x42680000    # 58.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    new-instance v1, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct {v1}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    invoke-static {p3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 222
    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v4, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 223
    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkontakte/android/SuggestFriendsActivity$SuggestFriendsAdapter;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/SuggestFriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 224
    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/vkontakte/android/SuggestFriendsActivity$SuggestFriendsAdapter;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    invoke-static {v4}, Lcom/vkontakte/android/SuggestFriendsActivity;->access$0(Lcom/vkontakte/android/SuggestFriendsActivity;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/SuggestFriendsActivity$SuggestFriendsAdapter;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    iget-object v1, v1, Lcom/vkontakte/android/SuggestFriendsActivity;->users:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 227
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v1, v0, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 230
    :cond_1
    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 231
    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v1, v2, v4, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 236
    :goto_0
    const v1, 0x7f060070

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget v1, v0, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 238
    iget-object v1, p0, Lcom/vkontakte/android/SuggestFriendsActivity$SuggestFriendsAdapter;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    iget-object v1, v1, Lcom/vkontakte/android/SuggestFriendsActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v2, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 239
    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vkontakte/android/SuggestFriendsActivity$SuggestFriendsAdapter;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    iget-object v2, v2, Lcom/vkontakte/android/SuggestFriendsActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 243
    :goto_2
    return-object p3

    .line 233
    :cond_2
    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 236
    goto :goto_1

    .line 241
    :cond_4
    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020206

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method
