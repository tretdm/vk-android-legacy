.class Lcom/vkontakte/android/BoardCreateTopicActivity$1;
.super Ljava/lang/Object;
.source "BoardCreateTopicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BoardCreateTopicActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BoardCreateTopicActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BoardCreateTopicActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BoardCreateTopicActivity$1;->this$0:Lcom/vkontakte/android/BoardCreateTopicActivity;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 49
    iget-object v1, p0, Lcom/vkontakte/android/BoardCreateTopicActivity$1;->this$0:Lcom/vkontakte/android/BoardCreateTopicActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/BoardCreateTopicActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 50
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/BoardCreateTopicActivity$1;->this$0:Lcom/vkontakte/android/BoardCreateTopicActivity;

    const v2, 0x7f06003d

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/BoardCreateTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 51
    return-void
.end method
