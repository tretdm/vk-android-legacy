.class Lcom/vkontakte/android/fragments/FriendsFragment$3;
.super Landroid/support/v4/view/ViewPager;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendsFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$3;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    .line 133
    invoke-direct {p0, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$3;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$12(Lcom/vkontakte/android/fragments/FriendsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
