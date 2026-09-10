.class Lcom/vkontakte/android/CallActivity$20;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallActivity;->onCommand(Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CallActivity;

.field private final synthetic val$orient:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CallActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$20;->this$0:Lcom/vkontakte/android/CallActivity;

    iput p2, p0, Lcom/vkontakte/android/CallActivity$20;->val$orient:I

    .line 946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 948
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$20;->this$0:Lcom/vkontakte/android/CallActivity;

    iget v1, p0, Lcom/vkontakte/android/CallActivity$20;->val$orient:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/CallActivity;->access$53(Lcom/vkontakte/android/CallActivity;I)V

    .line 949
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$20;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$54(Lcom/vkontakte/android/CallActivity;)I

    move-result v0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$20;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$54(Lcom/vkontakte/android/CallActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$20;->this$0:Lcom/vkontakte/android/CallActivity;

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$20;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$54(Lcom/vkontakte/android/CallActivity;)I

    move-result v1

    add-int/lit16 v1, v1, 0xb4

    rem-int/lit16 v1, v1, 0x168

    invoke-static {v0, v1}, Lcom/vkontakte/android/CallActivity;->access$53(Lcom/vkontakte/android/CallActivity;I)V

    .line 952
    :cond_1
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$20;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$54(Lcom/vkontakte/android/CallActivity;)I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$20;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$54(Lcom/vkontakte/android/CallActivity;)I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_3

    .line 953
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$20;->this$0:Lcom/vkontakte/android/CallActivity;

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$20;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$54(Lcom/vkontakte/android/CallActivity;)I

    move-result v1

    add-int/lit16 v1, v1, 0xb4

    rem-int/lit16 v1, v1, 0x168

    invoke-static {v0, v1}, Lcom/vkontakte/android/CallActivity;->access$53(Lcom/vkontakte/android/CallActivity;I)V

    .line 955
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$20;->this$0:Lcom/vkontakte/android/CallActivity;

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$20;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$23(Lcom/vkontakte/android/CallActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/CallActivity;->access$32(Lcom/vkontakte/android/CallActivity;I)V

    .line 956
    return-void
.end method
