.class Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$PhotosPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PhotoAlbumsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotosPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$PhotosPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$PhotosPagerAdapter;)V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$PhotosPagerAdapter;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "v":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 267
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 268
    return-void

    .line 261
    :pswitch_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$PhotosPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->access$0(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    .line 262
    goto :goto_0

    .line 264
    :pswitch_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$PhotosPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v0

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 271
    packed-switch p1, :pswitch_data_0

    .line 277
    const-string v0, ""

    :goto_0
    return-object v0

    .line 273
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$PhotosPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 275
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$PhotosPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

    const v1, 0x7f080173

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "v":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 253
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 254
    return-object v0

    .line 247
    :pswitch_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$PhotosPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->access$0(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    .line 248
    goto :goto_0

    .line 250
    :pswitch_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$PhotosPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->access$1(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v0

    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 240
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
