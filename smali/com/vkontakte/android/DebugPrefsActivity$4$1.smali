.class Lcom/vkontakte/android/DebugPrefsActivity$4$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "DebugPrefsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DebugPrefsActivity$4;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/DebugPrefsActivity$4;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DebugPrefsActivity$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DebugPrefsActivity$4$1;->this$1:Lcom/vkontakte/android/DebugPrefsActivity$4;

    .line 77
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/DebugPrefsActivity$4$1;->this$1:Lcom/vkontakte/android/DebugPrefsActivity$4;

    invoke-static {v0}, Lcom/vkontakte/android/DebugPrefsActivity$4;->access$0(Lcom/vkontakte/android/DebugPrefsActivity$4;)Lcom/vkontakte/android/DebugPrefsActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 84
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "j"    # Lorg/json/JSONObject;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/DebugPrefsActivity$4$1;->this$1:Lcom/vkontakte/android/DebugPrefsActivity$4;

    invoke-static {v0}, Lcom/vkontakte/android/DebugPrefsActivity$4;->access$0(Lcom/vkontakte/android/DebugPrefsActivity$4;)Lcom/vkontakte/android/DebugPrefsActivity;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 81
    return-void
.end method
