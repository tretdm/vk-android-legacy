.class Lcom/vkontakte/android/RestoreActivity$9;
.super Ljava/lang/Object;
.source "RestoreActivity.java"

# interfaces
.implements Lcom/vkontakte/android/Auth$AuthResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/RestoreActivity;->verifyCode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/RestoreActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/RestoreActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/RestoreActivity$9;->this$0:Lcom/vkontakte/android/RestoreActivity;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/RestoreActivity$9;)Lcom/vkontakte/android/RestoreActivity;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$9;->this$0:Lcom/vkontakte/android/RestoreActivity;

    return-object v0
.end method


# virtual methods
.method public authDone(ILjava/util/HashMap;)V
    .locals 2
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$9;->this$0:Lcom/vkontakte/android/RestoreActivity;

    new-instance v1, Lcom/vkontakte/android/RestoreActivity$9$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/vkontakte/android/RestoreActivity$9$1;-><init>(Lcom/vkontakte/android/RestoreActivity$9;Ljava/util/HashMap;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method
