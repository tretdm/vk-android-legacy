.class Lcom/vkontakte/android/ProfileEditActivity$18;
.super Ljava/lang/Object;
.source "ProfileEditActivity.java"

# interfaces
.implements Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileEditActivity;->selectBirthDate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileEditActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileEditActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileEditActivity$18;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;III)V
    .locals 4
    .param p1, "view"    # Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 444
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$18;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v1, p2}, Lcom/vkontakte/android/ProfileEditActivity;->access$24(Lcom/vkontakte/android/ProfileEditActivity;I)V

    .line 445
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$18;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    add-int/lit8 v2, p3, 0x1

    invoke-static {v1, v2}, Lcom/vkontakte/android/ProfileEditActivity;->access$23(Lcom/vkontakte/android/ProfileEditActivity;I)V

    .line 446
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$18;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v1, p4}, Lcom/vkontakte/android/ProfileEditActivity;->access$22(Lcom/vkontakte/android/ProfileEditActivity;I)V

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity$18;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileEditActivity;->access$25(Lcom/vkontakte/android/ProfileEditActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity$18;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/ProfileEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity$18;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileEditActivity;->access$26(Lcom/vkontakte/android/ProfileEditActivity;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "date":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$18;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileEditActivity;->access$27(Lcom/vkontakte/android/ProfileEditActivity;)I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity$18;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileEditActivity;->access$27(Lcom/vkontakte/android/ProfileEditActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$18;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v2, 0x7f090165

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    return-void
.end method
