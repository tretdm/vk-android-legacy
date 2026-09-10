.class final Lcom/vkontakte/android/NetworkStateReceiver$3;
.super Ljava/lang/Object;
.source "NetworkStateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NetworkStateReceiver;->updateInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/vkontakte/android/NetworkStateReceiver$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 191
    const-string v0, "vk"

    const-string v1, "do reauth"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/vkontakte/android/Auth;->doReauth()Z

    .line 193
    const-string v0, "vk"

    const-string v1, "done"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/vkontakte/android/NetworkStateReceiver$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vkontakte/android/NetworkStateReceiver;->access$000(Landroid/content/Context;)V

    .line 195
    return-void
.end method
