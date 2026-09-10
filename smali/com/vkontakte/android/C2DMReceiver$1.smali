.class Lcom/vkontakte/android/C2DMReceiver$1;
.super Ljava/lang/Object;
.source "C2DMReceiver.java"

# interfaces
.implements Lcom/vkontakte/android/api/C2DMRegisterDevice$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/C2DMReceiver;->onRegistered(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/C2DMReceiver;

.field private final synthetic val$registrationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/C2DMReceiver;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/C2DMReceiver$1;->this$0:Lcom/vkontakte/android/C2DMReceiver;

    iput-object p2, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$registrationId:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "need_update_gcm"

    iget-object v2, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$registrationId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    return-void
.end method

.method public success()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
