.class Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
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
.method private constructor <init>(Lcom/vkontakte/android/fragments/LikesListFragment;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/LikesListFragment;Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;-><init>(Lcom/vkontakte/android/fragments/LikesListFragment;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "v":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 154
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 155
    return-void

    .line 145
    :pswitch_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/LikesListFragment;->access$0(Lcom/vkontakte/android/fragments/LikesListFragment;)Lcom/vkontakte/android/UserListView;

    move-result-object v0

    .line 146
    goto :goto_0

    .line 148
    :pswitch_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/LikesListFragment;->access$1(Lcom/vkontakte/android/fragments/LikesListFragment;)Lcom/vkontakte/android/UserListView;

    move-result-object v0

    .line 149
    goto :goto_0

    .line 151
    :pswitch_2
    iget-object v1, p0, Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/LikesListFragment;->access$2(Lcom/vkontakte/android/fragments/LikesListFragment;)Lcom/vkontakte/android/UserListView;

    move-result-object v0

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x3

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 130
    packed-switch p1, :pswitch_data_0

    .line 138
    const-string v0, "qwe"

    :goto_0
    return-object v0

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    const v1, 0x7f080108

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/LikesListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/LikesListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    const v1, 0x7f0802a0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/LikesListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "v":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 125
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    return-object v0

    .line 116
    :pswitch_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/LikesListFragment;->access$0(Lcom/vkontakte/android/fragments/LikesListFragment;)Lcom/vkontakte/android/UserListView;

    move-result-object v0

    .line 117
    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/LikesListFragment;->access$1(Lcom/vkontakte/android/fragments/LikesListFragment;)Lcom/vkontakte/android/UserListView;

    move-result-object v0

    .line 120
    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v1, p0, Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/LikesListFragment;->access$2(Lcom/vkontakte/android/fragments/LikesListFragment;)Lcom/vkontakte/android/UserListView;

    move-result-object v0

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 109
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
