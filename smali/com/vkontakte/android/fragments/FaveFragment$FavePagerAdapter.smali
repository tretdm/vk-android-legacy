.class Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
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
.method public constructor <init>(Lcom/vkontakte/android/fragments/FaveFragment;)V
    .locals 1

    .prologue
    .line 163
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    .line 164
    invoke-virtual {p1}, Lcom/vkontakte/android/fragments/FaveFragment;->getInnerFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 165
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x5

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 173
    packed-switch p1, :pswitch_data_0

    .line 185
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$500(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;

    move-result-object v0

    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$700(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/fragments/FavePostListFragment;

    move-result-object v0

    goto :goto_0

    .line 179
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$900(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;

    move-result-object v0

    goto :goto_0

    .line 181
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$1100(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/fragments/PhotoListFragment;

    move-result-object v0

    goto :goto_0

    .line 183
    :pswitch_4
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$300(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/fragments/FaveVideoListFragment;

    move-result-object v0

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method
