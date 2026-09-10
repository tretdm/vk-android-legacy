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

.field final synthetic val$dlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DebugPrefsActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/vkontakte/android/DebugPrefsActivity$7;->this$0:Lcom/vkontakte/android/DebugPrefsActivity;

    iput-object p2, p0, Lcom/vkontakte/android/DebugPrefsActivity$7;->val$dlg:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 163
    const/4 v2, 0x0

    .local v2, "out":I
    :goto_0
    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    .line 164
    new-array v0, v8, [Z

    aput-boolean v7, v0, v7

    .line 165
    .local v0, "ended":[Z
    new-array v1, v8, [I

    aput v7, v1, v7

    .line 166
    .local v1, "offset":[I
    new-array v3, v8, [I

    aput v7, v3, v7

    .line 167
    .local v3, "total":[I
    :goto_1
    aget-boolean v4, v0, v7

    if-nez v4, :cond_0

    .line 168
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v5, "messages.get"

    invoke-direct {v4, v5}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    const-string v5, "offset"

    aget v6, v1, v7

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    const-string v5, "count"

    const/16 v6, 0xc8

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    const-string v5, "photo_sizes"

    invoke-virtual {v4, v5, v8}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    const-string v5, "out"

    invoke-virtual {v4, v5, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/DebugPrefsActivity$7$1;

    invoke-direct {v5, p0, v3, v0, v1}, Lcom/vkontakte/android/DebugPrefsActivity$7$1;-><init>(Lcom/vkontakte/android/DebugPrefsActivity$7;[I[Z[I)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    goto :goto_1

    .line 163
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "ended":[Z
    .end local v1    # "offset":[I
    .end local v3    # "total":[I
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/DebugPrefsActivity$7;->this$0:Lcom/vkontakte/android/DebugPrefsActivity;

    new-instance v5, Lcom/vkontakte/android/DebugPrefsActivity$7$2;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/DebugPrefsActivity$7$2;-><init>(Lcom/vkontakte/android/DebugPrefsActivity$7;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/DebugPrefsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method
