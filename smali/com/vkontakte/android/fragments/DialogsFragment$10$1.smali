.class Lcom/vkontakte/android/fragments/DialogsFragment$10$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DialogsFragment$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/DialogsFragment$10;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment$10;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$10$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$10;

    .line 559
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$10$1;->this$1:Lcom/vkontakte/android/fragments/DialogsFragment$10;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$10;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment$10;)Lcom/vkontakte/android/fragments/DialogsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$11(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 562
    return-void
.end method
