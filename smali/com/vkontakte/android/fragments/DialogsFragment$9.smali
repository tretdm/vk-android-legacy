.class Lcom/vkontakte/android/fragments/DialogsFragment$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DialogsFragment;->showStatePanel(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DialogsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$9;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    .line 538
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 540
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$9;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$5(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/high16 v1, 0x42180000    # 38.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 541
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$9;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$5(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranslationY(F)V

    .line 542
    return-void
.end method
