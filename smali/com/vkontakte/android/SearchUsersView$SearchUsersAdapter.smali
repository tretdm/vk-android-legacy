.class Lcom/vkontakte/android/SearchUsersView$SearchUsersAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchUsersView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/SearchUsersView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchUsersAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SearchUsersView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/SearchUsersView;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/vkontakte/android/SearchUsersView$SearchUsersAdapter;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/SearchUsersView;Lcom/vkontakte/android/SearchUsersView$SearchUsersAdapter;)V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/vkontakte/android/SearchUsersView$SearchUsersAdapter;-><init>(Lcom/vkontakte/android/SearchUsersView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView$SearchUsersAdapter;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v0}, Lcom/vkontakte/android/SearchUsersView;->access$0(Lcom/vkontakte/android/SearchUsersView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView$SearchUsersAdapter;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v0}, Lcom/vkontakte/android/SearchUsersView;->access$0(Lcom/vkontakte/android/SearchUsersView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v5, 0x7f06006f

    const/4 v2, 0x0

    .line 265
    if-nez p2, :cond_0

    .line 266
    iget-object v1, p0, Lcom/vkontakte/android/SearchUsersView$SearchUsersAdapter;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-virtual {v1}, Lcom/vkontakte/android/SearchUsersView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f03001a

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/vkontakte/android/SearchUsersView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 267
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42680000    # 58.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    new-instance v1, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct {v1}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    invoke-static {p2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 270
    iget-object v1, p0, Lcom/vkontakte/android/SearchUsersView$SearchUsersAdapter;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v1}, Lcom/vkontakte/android/SearchUsersView;->access$1(Lcom/vkontakte/android/SearchUsersView;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/SearchUsersView$SearchUsersAdapter;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v1}, Lcom/vkontakte/android/SearchUsersView;->access$0(Lcom/vkontakte/android/SearchUsersView;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 273
    .local v0, "profile":Lcom/vkontakte/android/UserProfile;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 274
    const v1, 0x7f060071

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v1, p0, Lcom/vkontakte/android/SearchUsersView$SearchUsersAdapter;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v1}, Lcom/vkontakte/android/SearchUsersView;->access$2(Lcom/vkontakte/android/SearchUsersView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v1

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 276
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vkontakte/android/SearchUsersView$SearchUsersAdapter;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v3}, Lcom/vkontakte/android/SearchUsersView;->access$2(Lcom/vkontakte/android/SearchUsersView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v3

    iget-object v4, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 279
    :goto_0
    const v1, 0x7f060070

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v1, v0, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/HighlightDrawable;

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/HighlightDrawable;->setFirst(Z)V

    .line 281
    return-object p2

    .line 278
    :cond_2
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f020206

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 279
    :cond_3
    const/16 v1, 0x8

    goto :goto_1
.end method
