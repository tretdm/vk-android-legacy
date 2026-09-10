.class Lcom/vkontakte/android/CheckInActivity$9$1;
.super Ljava/lang/Object;
.source "CheckInActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CheckInActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/CheckInActivity$9;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CheckInActivity$9;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/vkontakte/android/CheckInActivity$9$1;->this$1:Lcom/vkontakte/android/CheckInActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$9$1;->this$1:Lcom/vkontakte/android/CheckInActivity$9;

    iget-object v0, v0, Lcom/vkontakte/android/CheckInActivity$9;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$1500(Lcom/vkontakte/android/CheckInActivity;)V

    .line 388
    return-void
.end method
