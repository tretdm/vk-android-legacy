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

.field private final synthetic val$dlg:Landroid/app/ProgressDialog;

.field private final synthetic val$offset:[I

.field private final synthetic val$total:[I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DebugPrefsActivity$7$1;Landroid/app/ProgressDialog;[I[I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$1$1;->this$2:Lcom/vkontakte/android/DebugPrefsActivity$7$1;

    iput-object p2, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$1$1;->val$dlg:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$1$1;->val$total:[I

    iput-object p4, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$1$1;->val$offset:[I

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 188
    iget-object v0, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$1$1;->val$dlg:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$1$1;->val$total:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 189
    iget-object v0, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$1$1;->val$dlg:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$1$1;->val$offset:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 190
    return-void
.end method
