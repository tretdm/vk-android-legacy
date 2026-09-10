.class Lcom/vkontakte/android/PhotoCommentsActivity$6$1;
.super Ljava/lang/Object;
.source "PhotoCommentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoCommentsActivity$6;->success(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PhotoCommentsActivity$6;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoCommentsActivity$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6$1;->this$1:Lcom/vkontakte/android/PhotoCommentsActivity$6;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoCommentsActivity$6$1;)Lcom/vkontakte/android/PhotoCommentsActivity$6;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6$1;->this$1:Lcom/vkontakte/android/PhotoCommentsActivity$6;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 241
    iget-object v1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6$1;->this$1:Lcom/vkontakte/android/PhotoCommentsActivity$6;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoCommentsActivity$6;->access$0(Lcom/vkontakte/android/PhotoCommentsActivity$6;)Lcom/vkontakte/android/PhotoCommentsActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PhotoCommentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 242
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6$1;->this$1:Lcom/vkontakte/android/PhotoCommentsActivity$6;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoCommentsActivity$6;->access$0(Lcom/vkontakte/android/PhotoCommentsActivity$6;)Lcom/vkontakte/android/PhotoCommentsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoCommentsActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 243
    iget-object v1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6$1;->this$1:Lcom/vkontakte/android/PhotoCommentsActivity$6;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoCommentsActivity$6;->access$0(Lcom/vkontakte/android/PhotoCommentsActivity$6;)Lcom/vkontakte/android/PhotoCommentsActivity;

    move-result-object v1

    const v2, 0x7f06016b

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/PhotoCommentsActivity$6$1$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/PhotoCommentsActivity$6$1$1;-><init>(Lcom/vkontakte/android/PhotoCommentsActivity$6$1;)V

    .line 245
    const-wide/16 v3, 0xc8

    .line 243
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 246
    return-void
.end method
