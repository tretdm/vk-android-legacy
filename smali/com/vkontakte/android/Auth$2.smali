.class Lcom/vkontakte/android/Auth$2;
.super Ljava/lang/Object;
.source "Auth.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/Auth;->authorizeRestoreAsync(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/Auth$AuthResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$act:Lcom/vkontakte/android/Auth$AuthResultReceiver;

.field private final synthetic val$code:Ljava/lang/String;

.field private final synthetic val$sid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/Auth$AuthResultReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/Auth$2;->val$sid:Ljava/lang/String;

    iput-object p2, p0, Lcom/vkontakte/android/Auth$2;->val$code:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkontakte/android/Auth$2;->val$act:Lcom/vkontakte/android/Auth$AuthResultReceiver;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 64
    invoke-static {}, Lcom/vkontakte/android/Auth;->access$0()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "sid"

    iget-object v4, p0, Lcom/vkontakte/android/Auth$2;->val$sid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v3, "code"

    iget-object v4, p0, Lcom/vkontakte/android/Auth$2;->val$code:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v1, "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "restore_code"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4, v1}, Lcom/vkontakte/android/Auth;->access$1(Ljava/lang/String;Ljava/util/HashMap;ZLjava/util/HashMap;)I

    move-result v2

    .line 72
    .local v2, "r":I
    iget-object v3, p0, Lcom/vkontakte/android/Auth$2;->val$act:Lcom/vkontakte/android/Auth$AuthResultReceiver;

    if-eqz v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/vkontakte/android/Auth$2;->val$act:Lcom/vkontakte/android/Auth$AuthResultReceiver;

    invoke-interface {v3, v2, v1}, Lcom/vkontakte/android/Auth$AuthResultReceiver;->authDone(ILjava/util/HashMap;)V

    .line 75
    :cond_0
    return-void
.end method
