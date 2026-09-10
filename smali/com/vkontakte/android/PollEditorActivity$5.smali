.class Lcom/vkontakte/android/PollEditorActivity$5;
.super Ljava/lang/Object;
.source "PollEditorActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


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
    .line 115
    iput-object p1, p0, Lcom/vkontakte/android/PollEditorActivity$5;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 118
    iget-object v2, p0, Lcom/vkontakte/android/PollEditorActivity$5;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PollEditorActivity;->access$000(Lcom/vkontakte/android/PollEditorActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 119
    .local v0, "h":I
    iget-object v2, p0, Lcom/vkontakte/android/PollEditorActivity$5;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PollEditorActivity;->access$600(Lcom/vkontakte/android/PollEditorActivity;)Z

    move-result v1

    .line 120
    .local v1, "s":Z
    iget-object v2, p0, Lcom/vkontakte/android/PollEditorActivity$5;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PollEditorActivity;->access$600(Lcom/vkontakte/android/PollEditorActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/vkontakte/android/PollEditorActivity$5;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkontakte/android/PollEditorActivity;->access$602(Lcom/vkontakte/android/PollEditorActivity;Z)Z

    .line 122
    iget-object v2, p0, Lcom/vkontakte/android/PollEditorActivity$5;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PollEditorActivity;->access$700(Lcom/vkontakte/android/PollEditorActivity;)I

    move-result v0

    .line 126
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/PollEditorActivity$5;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    const v3, 0x7f080128

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity$5;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PollEditorActivity;->access$000(Lcom/vkontakte/android/PollEditorActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 127
    iget-object v2, p0, Lcom/vkontakte/android/PollEditorActivity$5;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    const v3, 0x7f080129

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity$5;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PollEditorActivity;->access$000(Lcom/vkontakte/android/PollEditorActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 128
    const/4 v2, 0x1

    return v2

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/PollEditorActivity$5;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v2, v0}, Lcom/vkontakte/android/PollEditorActivity;->access$702(Lcom/vkontakte/android/PollEditorActivity;I)I

    goto :goto_0
.end method
