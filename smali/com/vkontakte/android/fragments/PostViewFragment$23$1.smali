.class Lcom/vkontakte/android/fragments/PostViewFragment$23$1;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment$23;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PostViewFragment$23;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment$23;)V
    .locals 0

    .prologue
    .line 915
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$23$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 917
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$23$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$23;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/PostViewFragment$23;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 918
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$23$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$23;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/PostViewFragment$23;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1200(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/WriteBar;

    move-result-object v1

    const v2, 0x7f0801df

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 919
    return-void
.end method
