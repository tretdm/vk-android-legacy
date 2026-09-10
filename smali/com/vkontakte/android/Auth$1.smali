.class Lcom/vkontakte/android/Auth$1;
.super Ljava/lang/Object;
.source "Auth.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/Auth;->authorizeAsync(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/AuthActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$act:Lcom/vkontakte/android/AuthActivity;

.field private final synthetic val$login:Ljava/lang/String;

.field private final synthetic val$pass:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/AuthActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/Auth$1;->val$login:Ljava/lang/String;

    iput-object p2, p0, Lcom/vkontakte/android/Auth$1;->val$pass:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkontakte/android/Auth$1;->val$act:Lcom/vkontakte/android/AuthActivity;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/vkontakte/android/Auth;->access$0()V

    .line 41
    iget-object v1, p0, Lcom/vkontakte/android/Auth$1;->val$login:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkontakte/android/Auth$1;->val$pass:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vkontakte/android/Auth;->access$1(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 42
    .local v0, "r":I
    iget-object v1, p0, Lcom/vkontakte/android/Auth$1;->val$act:Lcom/vkontakte/android/AuthActivity;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/vkontakte/android/Auth$1;->val$act:Lcom/vkontakte/android/AuthActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/AuthActivity;->authDone(I)V

    .line 45
    :cond_0
    return-void
.end method
