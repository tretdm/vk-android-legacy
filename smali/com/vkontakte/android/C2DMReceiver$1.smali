.class Lcom/vkontakte/android/C2DMReceiver$1;
.super Ljava/lang/Object;
.source "C2DMReceiver.java"

# interfaces
.implements Lcom/vkontakte/android/api/VoipReceived$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/C2DMReceiver;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/C2DMReceiver;

.field private final synthetic val$callID:I

.field private final synthetic val$fromID:I

.field private final synthetic val$userName:Ljava/lang/String;

.field private final synthetic val$userPhoto:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/C2DMReceiver;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/C2DMReceiver$1;->this$0:Lcom/vkontakte/android/C2DMReceiver;

    iput p2, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$callID:I

    iput p3, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$fromID:I

    iput-object p4, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$userName:Ljava/lang/String;

    iput-object p5, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$userPhoto:Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 113
    return-void
.end method

.method public success()V
    .locals 5

    .prologue
    .line 93
    sget-object v1, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-nez v1, :cond_0

    .line 94
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v4, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 95
    const-string v1, "vk"

    const-string v2, "C2DM: starting long poll service"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v2, Lcom/vkontakte/android/CallIncomingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    const-string v1, "call_id"

    iget v2, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$callID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    const-string v1, "from_id"

    iget v2, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$fromID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const-string v1, "user_name"

    iget-object v2, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$userName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v1, "user_photo"

    iget-object v2, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$userPhoto:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 107
    return-void

    .line 97
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "vk"

    const-string v2, "C2DM: long poll service already running"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v1, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-virtual {v1}, Lcom/vkontakte/android/LongPollService;->setNormalMode()V

    goto :goto_0
.end method
