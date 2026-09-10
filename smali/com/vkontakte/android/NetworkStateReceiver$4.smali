.class Lcom/vkontakte/android/NetworkStateReceiver$4;
.super Ljava/lang/Object;
.source "NetworkStateReceiver.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NetworkStateReceiver;->updateDialogs(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NetworkStateReceiver$4;->val$context:Landroid/content/Context;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 263
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 5
    .param p1, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/DialogEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p2, "results":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/DialogEntry;>;"
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/NetworkStateReceiver$4;->val$context:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/vkontakte/android/cache/DialogsCache;->replace(Ljava/util/Vector;Landroid/content/Context;)V

    .line 245
    sput p1, Lcom/vkontakte/android/DialogsActivity;->numDialogs:I

    .line 246
    sget-object v1, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 247
    sget-object v1, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    sput v1, Lcom/vkontakte/android/DialogsActivity;->lastUpdate:I

    .line 249
    iget-object v1, p0, Lcom/vkontakte/android/NetworkStateReceiver$4;->val$context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkontakte/android/NetworkStateReceiver$4;->val$context:Landroid/content/Context;

    const-class v4, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 250
    sget-object v1, Lcom/vkontakte/android/DialogsActivity;->instance:Lcom/vkontakte/android/DialogsActivity;

    if-eqz v1, :cond_0

    .line 251
    sget-object v1, Lcom/vkontakte/android/DialogsActivity;->instance:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    .line 253
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/DialogsActivity;->updateCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/NetworkStateReceiver$4;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/vkontakte/android/NetworkStateReceiver;->access$6(Landroid/content/Context;)V

    .line 258
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
