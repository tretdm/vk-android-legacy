.class Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
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
.method private constructor <init>(Lcom/vkontakte/android/fragments/FeedbackFragment;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/FeedbackFragment;Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;-><init>(Lcom/vkontakte/android/fragments/FeedbackFragment;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "v":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 225
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 226
    return-void

    .line 219
    :pswitch_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FeedbackFragment;->access$0(Lcom/vkontakte/android/fragments/FeedbackFragment;)Lcom/vkontakte/android/NotificationsView;

    move-result-object v0

    .line 220
    goto :goto_0

    .line 222
    :pswitch_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FeedbackFragment;->access$1(Lcom/vkontakte/android/fragments/FeedbackFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 206
    packed-switch p1, :pswitch_data_0

    .line 212
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 208
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    const v1, 0x7f060108

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 210
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    const v1, 0x7f060067

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 206
    nop

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
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "v":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 201
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 202
    return-object v0

    .line 195
    :pswitch_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FeedbackFragment;->access$0(Lcom/vkontakte/android/fragments/FeedbackFragment;)Lcom/vkontakte/android/NotificationsView;

    move-result-object v0

    .line 196
    goto :goto_0

    .line 198
    :pswitch_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FeedbackFragment;->access$1(Lcom/vkontakte/android/fragments/FeedbackFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    goto :goto_0

    .line 193
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
    .line 188
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
