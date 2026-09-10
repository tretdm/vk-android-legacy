.class Lcom/vkontakte/android/CallActivity$14;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallActivity;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CallActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CallActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$14;->this$0:Lcom/vkontakte/android/CallActivity;

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 722
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/vkontakte/android/CallActivity$14;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v5}, Lcom/vkontakte/android/CallActivity;->access$50(Lcom/vkontakte/android/CallActivity;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v0, v3

    .line 723
    .local v0, "d":I
    rem-int/lit8 v2, v0, 0x3c

    .line 724
    .local v2, "secs":I
    div-int/lit8 v1, v0, 0x3c

    .line 725
    .local v1, "mins":I
    iget-object v3, p0, Lcom/vkontakte/android/CallActivity$14;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v3}, Lcom/vkontakte/android/CallActivity;->access$36(Lcom/vkontakte/android/CallActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f06004a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "%d:%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v3, p0, Lcom/vkontakte/android/CallActivity$14;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v3}, Lcom/vkontakte/android/CallActivity;->access$36(Lcom/vkontakte/android/CallActivity;)Landroid/view/View;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, p0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 727
    return-void
.end method
