.class Lcom/vkontakte/android/DebugPrefsActivity$7;
.super Ljava/lang/Object;
.source "DebugPrefsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DebugPrefsActivity;->downloadMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DebugPrefsActivity;

.field private final synthetic val$dlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DebugPrefsActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DebugPrefsActivity$7;->this$0:Lcom/vkontakte/android/DebugPrefsActivity;

    iput-object p2, p0, Lcom/vkontakte/android/DebugPrefsActivity$7;->val$dlg:Landroid/app/ProgressDialog;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/DebugPrefsActivity$7;)Lcom/vkontakte/android/DebugPrefsActivity;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/DebugPrefsActivity$7;->this$0:Lcom/vkontakte/android/DebugPrefsActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 162
    const/4 v6, 0x0

    .local v6, "out":I
    :goto_0
    const/4 v0, 0x2

    if-lt v6, v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/vkontakte/android/DebugPrefsActivity$7;->this$0:Lcom/vkontakte/android/DebugPrefsActivity;

    new-instance v1, Lcom/vkontakte/android/DebugPrefsActivity$7$2;

    iget-object v5, p0, Lcom/vkontakte/android/DebugPrefsActivity$7;->val$dlg:Landroid/app/ProgressDialog;

    invoke-direct {v1, p0, v5}, Lcom/vkontakte/android/DebugPrefsActivity$7$2;-><init>(Lcom/vkontakte/android/DebugPrefsActivity$7;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 211
    return-void

    .line 163
    :cond_0
    new-array v3, v8, [Z

    .line 164
    .local v3, "ended":[Z
    new-array v4, v8, [I

    .line 165
    .local v4, "offset":[I
    new-array v2, v8, [I

    .line 166
    .local v2, "total":[I
    :goto_1
    aget-boolean v0, v3, v9

    if-eqz v0, :cond_1

    .line 162
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 167
    :cond_1
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "messages.get"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 168
    const-string v1, "offset"

    aget v5, v4, v9

    invoke-virtual {v0, v1, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 169
    const-string v1, "count"

    const/16 v5, 0xc8

    invoke-virtual {v0, v1, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 170
    const-string v1, "photo_sizes"

    invoke-virtual {v0, v1, v8}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 171
    const-string v1, "out"

    invoke-virtual {v0, v1, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v7

    .line 172
    new-instance v0, Lcom/vkontakte/android/DebugPrefsActivity$7$1;

    iget-object v5, p0, Lcom/vkontakte/android/DebugPrefsActivity$7;->val$dlg:Landroid/app/ProgressDialog;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/DebugPrefsActivity$7$1;-><init>(Lcom/vkontakte/android/DebugPrefsActivity$7;[I[Z[ILandroid/app/ProgressDialog;)V

    invoke-virtual {v7, v0}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    goto :goto_1
.end method
