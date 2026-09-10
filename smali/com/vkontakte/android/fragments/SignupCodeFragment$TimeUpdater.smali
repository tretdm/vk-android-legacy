.class Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;
.super Ljava/lang/Object;
.source "SignupCodeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/SignupCodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SignupCodeFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/SignupCodeFragment;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;->this$0:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/SignupCodeFragment;Lcom/vkontakte/android/fragments/SignupCodeFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/SignupCodeFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/SignupCodeFragment$1;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;-><init>(Lcom/vkontakte/android/fragments/SignupCodeFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x3c

    const/4 v10, 0x0

    .line 154
    iget-object v4, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;->this$0:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/SignupCodeFragment;->access$100(Lcom/vkontakte/android/fragments/SignupCodeFragment;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;->this$0:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/SignupCodeFragment;->access$000(Lcom/vkontakte/android/fragments/SignupCodeFragment;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long v2, v11, v4

    .line 156
    .local v2, "time":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 157
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 158
    .local v1, "ssb":Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;->this$0:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    const v5, 0x7f0d02e8

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/fragments/SignupCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 159
    const-string v4, " "

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 160
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v4

    const-string v5, "%d:%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    div-long v7, v2, v11

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x1

    rem-long v8, v2, v11

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 161
    .local v0, "sp":Landroid/text/Spannable;
    new-instance v4, Landroid/text/style/TypefaceSpan;

    const-string v5, "sans-serif"

    invoke-direct {v4, v5}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v5

    invoke-interface {v0, v4, v10, v5, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 162
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 163
    iget-object v4, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;->this$0:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/SignupCodeFragment;->access$100(Lcom/vkontakte/android/fragments/SignupCodeFragment;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f080176

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v4, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;->this$0:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/SignupCodeFragment;->access$100(Lcom/vkontakte/android/fragments/SignupCodeFragment;)Landroid/view/View;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, p0, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    .end local v0    # "sp":Landroid/text/Spannable;
    .end local v1    # "ssb":Landroid/text/SpannableStringBuilder;
    .end local v2    # "time":J
    :cond_0
    :goto_0
    return-void

    .line 166
    .restart local v2    # "time":J
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;->this$0:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/SignupCodeFragment;->access$300(Lcom/vkontakte/android/fragments/SignupCodeFragment;)Lcom/vkontakte/android/fragments/SignupCodeFragment$OnResendListener;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater$1;-><init>(Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;)V

    invoke-interface {v4, v10, v5}, Lcom/vkontakte/android/fragments/SignupCodeFragment$OnResendListener;->resendCode(ZLjava/lang/Runnable;)V

    goto :goto_0
.end method
