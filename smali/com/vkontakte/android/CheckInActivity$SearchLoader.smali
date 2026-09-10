.class Lcom/vkontakte/android/CheckInActivity$SearchLoader;
.super Ljava/lang/Object;
.source "CheckInActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/CheckInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CheckInActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/CheckInActivity;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/vkontakte/android/CheckInActivity$SearchLoader;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/CheckInActivity;Lcom/vkontakte/android/CheckInActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/CheckInActivity;
    .param p2, "x1"    # Lcom/vkontakte/android/CheckInActivity$1;

    .prologue
    .line 514
    invoke-direct {p0, p1}, Lcom/vkontakte/android/CheckInActivity$SearchLoader;-><init>(Lcom/vkontakte/android/CheckInActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 517
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$SearchLoader;->this$0:Lcom/vkontakte/android/CheckInActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vkontakte/android/CheckInActivity$SearchLoader;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CheckInActivity;->access$300(Lcom/vkontakte/android/CheckInActivity;)Landroid/widget/SearchView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/CheckInActivity;->access$400(Lcom/vkontakte/android/CheckInActivity;Ljava/lang/String;)V

    .line 518
    return-void
.end method
