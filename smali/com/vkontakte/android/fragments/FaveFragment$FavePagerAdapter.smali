.class Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FaveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/FaveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavePagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FaveFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/FaveFragment;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/FaveFragment;Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;-><init>(Lcom/vkontakte/android/fragments/FaveFragment;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "v":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 194
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 195
    return-void

    .line 179
    :pswitch_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FaveFragment;->access$0(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/UserListView;

    move-result-object v0

    .line 180
    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FaveFragment;->access$1(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    .line 183
    goto :goto_0

    .line 185
    :pswitch_2
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FaveFragment;->access$2(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/UserListView;

    move-result-object v0

    .line 186
    goto :goto_0

    .line 188
    :pswitch_3
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FaveFragment;->access$3(Lcom/vkontakte/android/fragments/FaveFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 189
    goto :goto_0

    .line 191
    :pswitch_4
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FaveFragment;->access$4(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/VideoListView;

    move-result-object v0

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x5

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 136
    const/4 v3, 0x0

    .line 137
    .local v3, "v":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 167
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 168
    return-object v3

    .line 139
    :pswitch_0
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FaveFragment;->access$0(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/UserListView;

    move-result-object v3

    .line 140
    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FaveFragment;->access$1(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v3

    .line 143
    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FaveFragment;->access$2(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/UserListView;

    move-result-object v3

    .line 146
    goto :goto_0

    .line 148
    :pswitch_3
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FaveFragment;->access$3(Lcom/vkontakte/android/fragments/FaveFragment;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 149
    new-instance v2, Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-direct {v2}, Lcom/vkontakte/android/fragments/PhotoListFragment;-><init>()V

    .line 150
    .local v2, "pf":Lcom/vkontakte/android/fragments/PhotoListFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 151
    .local v1, "args":Landroid/os/Bundle;
    new-instance v0, Lcom/vkontakte/android/api/PhotoAlbum;

    invoke-direct {v0}, Lcom/vkontakte/android/api/PhotoAlbum;-><init>()V

    .line 152
    .local v0, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    const/16 v4, -0x2329

    iput v4, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    .line 153
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    const v5, 0x7f0601c1

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/fragments/FaveFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 154
    const/16 v4, 0x2328

    iput v4, v0, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    .line 155
    const-string v4, "album"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 156
    const-string v4, "nohead"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    invoke-virtual {v2, v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 158
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/FaveFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f0800f6

    invoke-virtual {v4, v5, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 160
    .end local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v2    # "pf":Lcom/vkontakte/android/fragments/PhotoListFragment;
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FaveFragment;->access$3(Lcom/vkontakte/android/fragments/FaveFragment;)Landroid/widget/FrameLayout;

    move-result-object v3

    .line 162
    goto :goto_0

    .line 164
    :pswitch_4
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FaveFragment;->access$4(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/VideoListView;

    move-result-object v3

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 132
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
