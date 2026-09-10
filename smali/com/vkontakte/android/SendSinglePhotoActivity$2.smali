.class Lcom/vkontakte/android/SendSinglePhotoActivity$2;
.super Ljava/lang/Object;
.source "SendSinglePhotoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SendSinglePhotoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SendSinglePhotoActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SendSinglePhotoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$2;->this$0:Lcom/vkontakte/android/SendSinglePhotoActivity;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$2;->this$0:Lcom/vkontakte/android/SendSinglePhotoActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 61
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$2;->this$0:Lcom/vkontakte/android/SendSinglePhotoActivity;

    invoke-static {v1}, Lcom/vkontakte/android/SendSinglePhotoActivity;->access$1(Lcom/vkontakte/android/SendSinglePhotoActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 62
    return-void
.end method
