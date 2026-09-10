.class Lcom/vkontakte/android/PollEditorActivity$1;
.super Ljava/lang/Object;
.source "PollEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PollEditorActivity;
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
    iput-object p1, p0, Lcom/vkontakte/android/PollEditorActivity$1;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 35
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity$1;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PollEditorActivity;->access$0(Lcom/vkontakte/android/PollEditorActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 43
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity$1;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PollEditorActivity;->access$0(Lcom/vkontakte/android/PollEditorActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 37
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity$1;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    const v2, 0x7f090146

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity$1;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PollEditorActivity;->access$0(Lcom/vkontakte/android/PollEditorActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/16 v3, 0xb

    if-ge v1, v3, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 39
    .local v0, "index":I
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity$1;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PollEditorActivity;->access$1(Lcom/vkontakte/android/PollEditorActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity$1;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PollEditorActivity;->access$1(Lcom/vkontakte/android/PollEditorActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity$1;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PollEditorActivity;->access$1(Lcom/vkontakte/android/PollEditorActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity$1;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PollEditorActivity;->access$2(Lcom/vkontakte/android/PollEditorActivity;)V

    .line 42
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity$1;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PollEditorActivity;->access$3(Lcom/vkontakte/android/PollEditorActivity;)V

    goto :goto_0

    .line 37
    .end local v0    # "index":I
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method
