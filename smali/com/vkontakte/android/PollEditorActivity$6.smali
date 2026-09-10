.class Lcom/vkontakte/android/PollEditorActivity$6;
.super Ljava/lang/Object;
.source "PollEditorActivity.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PollEditorActivity;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PollEditorActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PollEditorActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PollEditorActivity$6;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .prologue
    .line 146
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 3
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity$6;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PollEditorActivity;->access$0(Lcom/vkontakte/android/PollEditorActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p4, v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity$6;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/PollEditorActivity;->access$7(Lcom/vkontakte/android/PollEditorActivity;Z)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity$6;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    const v1, 0x7f090147

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity$6;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PollEditorActivity;->access$0(Lcom/vkontakte/android/PollEditorActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/PollEditorActivity$6;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PollEditorActivity;->access$0(Lcom/vkontakte/android/PollEditorActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity$6;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    const v1, 0x7f090148

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity$6;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PollEditorActivity;->access$0(Lcom/vkontakte/android/PollEditorActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/PollEditorActivity$6;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PollEditorActivity;->access$0(Lcom/vkontakte/android/PollEditorActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method
