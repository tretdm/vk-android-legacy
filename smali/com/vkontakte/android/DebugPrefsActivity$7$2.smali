.class Lcom/vkontakte/android/DebugPrefsActivity$7$2;
.super Ljava/lang/Object;
.source "DebugPrefsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DebugPrefsActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/DebugPrefsActivity$7;

.field private final synthetic val$dlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DebugPrefsActivity$7;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$2;->this$1:Lcom/vkontakte/android/DebugPrefsActivity$7;

    iput-object p2, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$2;->val$dlg:Landroid/app/ProgressDialog;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$2;->val$dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 209
    return-void
.end method
