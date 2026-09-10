.class Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "LikesListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/LikesListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LikesPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/LikesListFragment;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/fragments/LikesListFragment;)V
    .locals 1

    .prologue
    .line 108
    iput-object p1, p0, Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    .line 109
    invoke-virtual {p1}, Lcom/vkontakte/android/fragments/LikesListFragment;->getInnerFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 110
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 119
    packed-switch p1, :pswitch_data_0

    .line 127
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/LikesListFragment;->access$400(Lcom/vkontakte/android/fragments/LikesListFragment;)Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;

    move-result-object v0

    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/LikesListFragment;->access$100(Lcom/vkontakte/android/fragments/LikesListFragment;)Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;

    move-result-object v0

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/LikesListFragment;->access$300(Lcom/vkontakte/android/fragments/LikesListFragment;)Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;

    move-result-object v0

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 131
    packed-switch p1, :pswitch_data_0

    .line 139
    const-string v0, "qwe"

    :goto_0
    return-object v0

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    const v1, 0x7f0d0151

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/LikesListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    const v1, 0x7f0d0100

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/LikesListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    const v1, 0x7f0d026b

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/LikesListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
