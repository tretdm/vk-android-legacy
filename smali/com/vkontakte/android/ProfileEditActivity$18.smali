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
    .line 437
    iput-object p1, p0, Lcom/vkontakte/android/ProfileEditActivity$18;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

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
    .line 440
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$18;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v1, p2}, Lcom/vkontakte/android/ProfileEditActivity;->access$2102(Lcom/vkontakte/android/ProfileEditActivity;I)I

    .line 441
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$18;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    add-int/lit8 v2, p3, 0x1

    invoke-static {v1, v2}, Lcom/vkontakte/android/ProfileEditActivity;->access$2002(Lcom/vkontakte/android/ProfileEditActivity;I)I

    .line 442
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$18;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v1, p4}, Lcom/vkontakte/android/ProfileEditActivity;->access$1902(Lcom/vkontakte/android/ProfileEditActivity;I)I

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity$18;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileEditActivity;->access$1900(Lcom/vkontakte/android/ProfileEditActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity$18;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/ProfileEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity$18;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v3}, Lcom/vkontakte/android/ProfileEditActivity;->access$2000(Lcom/vkontakte/android/ProfileEditActivity;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "date":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$18;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileEditActivity;->access$2100(Lcom/vkontakte/android/ProfileEditActivity;)I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity$18;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileEditActivity;->access$2100(Lcom/vkontakte/android/ProfileEditActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$18;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v2, 0x7f080146

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    return-void
.end method
