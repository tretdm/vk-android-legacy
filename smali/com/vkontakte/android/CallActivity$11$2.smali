.class Lcom/vkontakte/android/CallActivity$11$2;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/VoipStart$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/CallActivity$11;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CallActivity$11;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$11$2;->this$1:Lcom/vkontakte/android/CallActivity$11;

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 566
    return-void
.end method

.method public success(ILjava/lang/String;)V
    .locals 1
    .param p1, "_callID"    # I
    .param p2, "upStream"    # Ljava/lang/String;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$2;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/vkontakte/android/CallActivity;->access$38(Lcom/vkontakte/android/CallActivity;I)V

    .line 560
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$2;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/vkontakte/android/CallActivity;->access$39(Lcom/vkontakte/android/CallActivity;Ljava/lang/String;)V

    .line 561
    return-void
.end method
