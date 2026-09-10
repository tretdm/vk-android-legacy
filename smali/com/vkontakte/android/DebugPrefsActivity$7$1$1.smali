.class Lcom/vkontakte/android/DebugPrefsActivity$7$1$1;
.super Ljava/lang/Object;
.source "DebugPrefsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DebugPrefsActivity$7$1;->success(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/DebugPrefsActivity$7$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DebugPrefsActivity$7$1;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$1$1;->this$2:Lcom/vkontakte/android/DebugPrefsActivity$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    iget-object v0, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$1$1;->this$2:Lcom/vkontakte/android/DebugPrefsActivity$7$1;

    iget-object v0, v0, Lcom/vkontakte/android/DebugPrefsActivity$7$1;->this$1:Lcom/vkontakte/android/DebugPrefsActivity$7;

    iget-object v0, v0, Lcom/vkontakte/android/DebugPrefsActivity$7;->val$dlg:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$1$1;->this$2:Lcom/vkontakte/android/DebugPrefsActivity$7$1;

    iget-object v1, v1, Lcom/vkontakte/android/DebugPrefsActivity$7$1;->val$total:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 190
    iget-object v0, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$1$1;->this$2:Lcom/vkontakte/android/DebugPrefsActivity$7$1;

    iget-object v0, v0, Lcom/vkontakte/android/DebugPrefsActivity$7$1;->this$1:Lcom/vkontakte/android/DebugPrefsActivity$7;

    iget-object v0, v0, Lcom/vkontakte/android/DebugPrefsActivity$7;->val$dlg:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$1$1;->this$2:Lcom/vkontakte/android/DebugPrefsActivity$7$1;

    iget-object v1, v1, Lcom/vkontakte/android/DebugPrefsActivity$7$1;->val$offset:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 191
    return-void
.end method
