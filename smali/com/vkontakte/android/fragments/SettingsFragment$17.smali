.class Lcom/vkontakte/android/fragments/SettingsFragment$17;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SettingsFragment;->showTimePicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

.field final synthetic val$canceled:[Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SettingsFragment;[Z)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SettingsFragment$17;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/SettingsFragment$17;->val$canceled:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 7
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 264
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SettingsFragment$17;->val$canceled:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_0

    .line 278
    :goto_0
    return-void

    .line 265
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 266
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v4

    add-int v1, v3, v4

    .line 267
    .local v1, "now":I
    mul-int/lit8 v3, p2, 0x3c

    add-int v2, v3, p3

    .line 268
    .local v2, "set":I
    if-ge v1, v2, :cond_1

    .line 269
    invoke-virtual {v0, p2}, Ljava/util/Date;->setHours(I)V

    .line 270
    invoke-virtual {v0, p3}, Ljava/util/Date;->setMinutes(I)V

    .line 271
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SettingsFragment$17;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/vkontakte/android/fragments/SettingsFragment;->access$600(Lcom/vkontakte/android/fragments/SettingsFragment;J)V

    goto :goto_0

    .line 273
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 274
    invoke-virtual {v0, p2}, Ljava/util/Date;->setHours(I)V

    .line 275
    invoke-virtual {v0, p3}, Ljava/util/Date;->setMinutes(I)V

    .line 276
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SettingsFragment$17;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/vkontakte/android/fragments/SettingsFragment;->access$600(Lcom/vkontakte/android/fragments/SettingsFragment;J)V

    goto :goto_0
.end method
