.class Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "FeedbackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/FeedbackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedbackPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/fragments/FeedbackFragment;)V
    .locals 1

    .prologue
    .line 136
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    .line 137
    invoke-virtual {p1}, Lcom/vkontakte/android/fragments/FeedbackFragment;->getInnerFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 138
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 147
    packed-switch p1, :pswitch_data_0

    .line 153
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 149
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FeedbackFragment;->access$300(Lcom/vkontakte/android/fragments/FeedbackFragment;)Lcom/vkontakte/android/fragments/NotificationsFragment;

    move-result-object v0

    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FeedbackFragment;->access$100(Lcom/vkontakte/android/fragments/FeedbackFragment;)Lcom/vkontakte/android/fragments/CommentsPostListFragment;

    move-result-object v0

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 157
    packed-switch p1, :pswitch_data_0

    .line 163
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 159
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    const v1, 0x7f0d0260

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    const v1, 0x7f0d0082

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
