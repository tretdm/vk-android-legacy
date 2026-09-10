.class Lcom/vkontakte/android/fragments/FaveFragment$2;
.super Ljava/lang/Object;
.source "FaveFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FaveFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FaveFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FaveFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FaveFragment$2;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/FaveFragment$2;)Lcom/vkontakte/android/fragments/FaveFragment;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$2;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    return-object v0
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 154
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 148
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "page"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$2;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$5(Lcom/vkontakte/android/fragments/FaveFragment;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$2;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$6(Lcom/vkontakte/android/fragments/FaveFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FaveFragment$2;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FaveFragment;->access$5(Lcom/vkontakte/android/fragments/FaveFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$2;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    new-instance v1, Lcom/vkontakte/android/fragments/FaveFragment$2$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/FaveFragment$2$1;-><init>(Lcom/vkontakte/android/fragments/FaveFragment$2;I)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FaveFragment;->access$7(Lcom/vkontakte/android/fragments/FaveFragment;Ljava/lang/Runnable;)V

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$2;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$6(Lcom/vkontakte/android/fragments/FaveFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FaveFragment$2;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FaveFragment;->access$5(Lcom/vkontakte/android/fragments/FaveFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$2;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0, p1}, Lcom/vkontakte/android/fragments/FaveFragment;->access$12(Lcom/vkontakte/android/fragments/FaveFragment;I)V

    .line 142
    return-void
.end method
